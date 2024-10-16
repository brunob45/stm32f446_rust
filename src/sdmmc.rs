use defmt::*;
use embassy_stm32::sdmmc::Sdmmc;
use embassy_stm32::time::mhz;
use embassy_stm32::{bind_interrupts, peripherals, sdmmc};
use {defmt_rtt as _, panic_probe as _};

bind_interrupts!(struct Irqs {
    SDIO => sdmmc::InterruptHandler<peripherals::SDIO>;
});

struct MySdmmc<'d> {
    inner: Sdmmc<'d, peripherals::SDIO, peripherals::DMA2_CH3>,
}

impl<'d> MySdmmc<'d> {
    pub fn new(sdmmc: Sdmmc<'d, peripherals::SDIO, peripherals::DMA2_CH3>) -> Self {
        Self { inner: sdmmc }
    }
}

impl<'d> embedded_sdmmc::BlockDevice for MySdmmc<'d> {
    type Error = ();

    fn num_blocks(&self) -> Result<embedded_sdmmc::BlockCount, Self::Error> {
        Ok(embedded_sdmmc::BlockCount(0))
    }

    fn read(
        &mut self,
        blocks: &mut [embedded_sdmmc::Block],
        start_block_idx: embedded_sdmmc::BlockIdx,
    ) -> Result<(), Self::Error> {
        let mut buffer = embassy_stm32::sdmmc::DataBlock { 0: [0; 512] };
        for i in 0..blocks.len() {
            embassy_futures::block_on(self.inner.read_block(start_block_idx.0 + (i as u32), &mut buffer)).map_err(|_| ())?;
            blocks[i].contents.clone_from_slice(&buffer.0);
        }
        Ok(())
    }

    fn write(
        &mut self,
        blocks: &[embedded_sdmmc::Block],
        start_block_idx: embedded_sdmmc::BlockIdx,
    ) -> Result<(), Self::Error> {
        let mut buffer = embassy_stm32::sdmmc::DataBlock { 0: [0; 512] };
        for i in 0..blocks.len() {
            buffer.0.clone_from_slice(&blocks[i].contents);
            embassy_futures::block_on(self.inner.write_block(start_block_idx.0 + (i as u32), &buffer)).map_err(|_| ())?
        }
        Ok(())
    }
}

struct MyTs {}

impl embedded_sdmmc::TimeSource for MyTs {
    fn get_timestamp(&self) -> embedded_sdmmc::Timestamp {
        embedded_sdmmc::Timestamp {
            year_since_1970: 0,
            zero_indexed_month: 0,
            zero_indexed_day: 0,
            hours: 0,
            minutes: 0,
            seconds: 0,
        }
    }
}

fn create_file(vm: &mut embedded_sdmmc::VolumeManager<MySdmmc, MyTs>) -> Result<(), ()> {
    let mut v0 = match vm.open_volume(embedded_sdmmc::VolumeIdx(0)) {
        Ok(x) => x,
        Err(_) => return Err(()),
    };
    info!("Volume created");
    let mut root = match v0.open_root_dir() {
        Ok(x) => x,
        Err(_) => return Err(()),
    };
    info!("Root dir created");
    let _my_file = match root.open_file_in_dir("TEST.TXT", embedded_sdmmc::Mode::ReadWriteCreate) {
        Ok(x) => x,
        Err(_) => return Err(()),
    };
    info!("File created");
    Ok(())
}

#[embassy_executor::task]
pub async fn sdmmc_task(
    peri: peripherals::SDIO,
    dma: peripherals::DMA2_CH3,
    clk: peripherals::PC12,
    cmd: peripherals::PD2,
    d0: peripherals::PC8,
    d1: peripherals::PC9,
    d2: peripherals::PC10,
    d3: peripherals::PC11,
) {
    let mut sdmmc = Sdmmc::new_4bit(peri, Irqs, dma, clk, cmd, d0, d1, d2, d3, Default::default());

    // Should print 400kHz for initialization
    info!("Configured clock: {}", sdmmc.clock().0);

    let mut err = None;
    loop {
        match sdmmc.init_card(mhz(24)).await {
            Ok(_) => break,
            Err(e) => {
                if err != Some(e) {
                    info!("waiting for card error, retrying: {:?}", e);
                    err = Some(e);
                }
            }
        }
    }

    let sdcard = MySdmmc::new(sdmmc);
    let time_source = MyTs {};
    let mut volume_mgr = embedded_sdmmc::VolumeManager::new(sdcard, time_source);
    info!("Volume created");
    match create_file(&mut volume_mgr) {
        Ok(_) => info!("File success"),
        Err(_) => info!("File fail"),
    };

    // let card = unwrap!(sdmmc.card());

    // info!("Card: {:#?}", Debug2Format(card));
    // info!("Clock: {}", sdmmc.clock());

    // // Arbitrary block index
    // let block_idx = 16;

    // // SDMMC uses `DataBlock` instead of `&[u8]` to ensure 4 byte alignment required by the hardware.
    // let mut block = DataBlock([0u8; 512]);

    // sdmmc.read_block(block_idx, &mut block).await.unwrap();
    // info!("Read: {=[u8]:X}...{=[u8]:X}", block[..8], block[512 - 8..]);

    // if !ALLOW_WRITES {
    //     info!("Writing is disabled.");
    //     loop {}
    // }

    // info!("Filling block with 0x55");
    // block.fill(0x55);
    // sdmmc.write_block(block_idx, &block).await.unwrap();
    // info!("Write done");

    // sdmmc.read_block(block_idx, &mut block).await.unwrap();
    // info!("Read: {=[u8]:X}...{=[u8]:X}", block[..8], block[512 - 8..]);

    // info!("Filling block with 0xAA");
    // block.fill(0xAA);
    // sdmmc.write_block(block_idx, &block).await.unwrap();
    // info!("Write done");

    // sdmmc.read_block(block_idx, &mut block).await.unwrap();
    // info!("Read: {=[u8]:X}...{=[u8]:X}", block[..8], block[512 - 8..]);
}
