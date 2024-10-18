use defmt::*;
use embassy_stm32::sdmmc::Sdmmc;
use embassy_stm32::time::mhz;
use embassy_stm32::{bind_interrupts, peripherals, sdmmc};

#[cfg(feature="is_sync")]
use embedded_io::{Read, Write};

#[cfg(feature="is_sync")]
use embassy_futures::block_on;

#[cfg(not(feature="is_sync"))]
use embedded_io_async::{Read, Write};


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
    type Error = embassy_stm32::sdmmc::Error;

    fn num_blocks(&self) -> Result<embedded_sdmmc::BlockCount, Self::Error> {
        Ok(embedded_sdmmc::BlockCount(self.inner.card()?.csd.block_count()))
    }

    #[maybe_async::sync_impl]
    fn read(
        &mut self,
        blocks: &mut [embedded_sdmmc::Block],
        start_block_idx: embedded_sdmmc::BlockIdx,
    ) -> Result<(), Self::Error> {
        let mut buffer = embassy_stm32::sdmmc::DataBlock { 0: [0; 512] };
        for (i, block) in blocks.iter_mut().enumerate() {
            block_on(self.inner.read_block(start_block_idx.0 + (i as u32), &mut buffer))?;
            block.contents.clone_from_slice(&buffer.0);
        }
        Ok(())
    }

    #[maybe_async::async_impl]
    async fn read(
        &mut self,
        blocks: &mut [embedded_sdmmc::Block],
        start_block_idx: embedded_sdmmc::BlockIdx,
    ) -> Result<(), Self::Error> {
        let mut buffer = embassy_stm32::sdmmc::DataBlock { 0: [0; 512] };
        for (i, block) in blocks.iter_mut().enumerate() {
            self.inner.read_block(start_block_idx.0 + (i as u32), &mut buffer).await?;
            block.contents.clone_from_slice(&buffer.0);
        }
        Ok(())
    }

    #[maybe_async::sync_impl]
    fn write(
        &mut self,
        blocks: &[embedded_sdmmc::Block],
        start_block_idx: embedded_sdmmc::BlockIdx,
    ) -> Result<(), Self::Error> {
        let mut buffer = embassy_stm32::sdmmc::DataBlock { 0: [0; 512] };
        for (i, block) in blocks.iter().enumerate() {
            buffer.0.clone_from_slice(&block.contents);
            block_on(self.inner.write_block(start_block_idx.0 + (i as u32), &buffer))?;
        }
        Ok(())
    }

    #[maybe_async::async_impl]
    async fn write(
        &mut self,
        blocks: &[embedded_sdmmc::Block],
        start_block_idx: embedded_sdmmc::BlockIdx,
    ) -> Result<(), Self::Error> {
        let mut buffer = embassy_stm32::sdmmc::DataBlock { 0: [0; 512] };
        for (i, block) in blocks.iter().enumerate() {
            buffer.0.clone_from_slice(&block.contents);
            self.inner.write_block(start_block_idx.0 + (i as u32), &buffer).await?;
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

type Error = embedded_sdmmc::Error<embassy_stm32::sdmmc::Error>;

#[maybe_async::maybe_async]
async fn create_file(vm: &mut embedded_sdmmc::VolumeManager<MySdmmc<'_>, MyTs>) -> Result<(), Error> {
    let mut v0 = vm.open_volume(embedded_sdmmc::VolumeIdx(0)).await?;
    info!("Volume created");

    let mut root = v0.open_root_dir()?;
    info!("Root dir created");

    let mut my_file: embedded_sdmmc::File<'_, MySdmmc<'_>, MyTs, 4, 4, 1> = root
        .open_file_in_dir("TEST.TXT", embedded_sdmmc::Mode::ReadWriteCreate)
        .await?;
    info!("File created");

    let _ = my_file.seek_from_start(0);

    let hello = b"Hello world!";
    my_file.write_all(hello).await?;
    my_file.flush().await?;

    let mut buf = [0u8; 12];
    let _ = my_file.seek_from_start(0);
    my_file.read_exact(&mut buf[..]).await.map_err(|e| match e {
        embedded_io_async::ReadExactError::UnexpectedEof => Error::EndOfFile,
        embedded_io::ReadExactError::Other(err) => err,
    })?;
    info!("Read from file: {}", core::str::from_utf8(&buf[..]).unwrap());

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

    let card = unwrap!(sdmmc.card());

    info!("Card: {:#?}", Debug2Format(card));
    info!("Clock: {}", sdmmc.clock());

    let sdcard = MySdmmc::new(sdmmc);
    let time_source = MyTs {};
    let mut volume_mgr = embedded_sdmmc::VolumeManager::new(sdcard, time_source);
    info!("Volume mgr created");

    #[cfg(feature="is_sync")]
    let res = create_file(&mut volume_mgr);

    #[cfg(not(feature="is_sync"))]
    let res = create_file(&mut volume_mgr).await;

    match res {
        Ok(_) => info!("File success"),
        Err(_) => info!("File fail"),
    };

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
