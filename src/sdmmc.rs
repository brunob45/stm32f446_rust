use defmt::*;
use embassy_stm32::peripherals::{DMA2_CH3, SDIO};
use embassy_stm32::sdmmc::Sdmmc;
use embassy_stm32::time::mhz;
use embassy_stm32::{bind_interrupts, peripherals, sdmmc};
use embassy_time::Timer;
use embedded_io_async::Write;
use {defmt_rtt as _, panic_probe as _};

use block_device_adapters::BufStream;
use embedded_fatfs::FsOptions;

bind_interrupts!(struct Irqs {
    SDIO => sdmmc::InterruptHandler<peripherals::SDIO>;
});

async fn create_file(sdmmc: Sdmmc<'_, SDIO, DMA2_CH3>) -> Result<(), ()> {
    let inner = BufStream::<_, 512>::new(sdmmc);
    let fs = match embedded_fatfs::FileSystem::new(inner, FsOptions::new()).await {
        Ok(x) => x,
        Err(_) => return Err(()),
    };
    {
        let mut f = match fs.root_dir().create_file("test.log").await {
            Ok(x) => x,
            Err(_) => return Err(()),
        };
        let hello = b"Hello world!";
        match f.write_all(hello).await {
            Ok(x) => x,
            Err(_) => return Err(()),
        };
        match f.flush().await {
            Ok(x) => x,
            Err(_) => return Err(()),
        };
    }
    match fs.unmount().await {
        Ok(x) => x,
        Err(_) => return Err(()),
    };
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
    let mut sdmmc: Sdmmc<'_, SDIO, DMA2_CH3> =
        Sdmmc::new_4bit(peri, Irqs, dma, clk, cmd, d0, d1, d2, d3, Default::default());

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

    let _ = create_file(sdmmc).await;

    loop {
        // do nothing
        Timer::after_millis(1000).await;
    }

    // let sdcard = MySdmmc::new(sdmmc);
    // let time_source = MyTs {};
    // let mut volume_mgr = embedded_sdmmc::VolumeManager::new(sdcard, time_source);
    // info!("Volume mgr created");
    // match create_file(&mut volume_mgr) {
    //     Ok(_) => info!("File success"),
    //     Err(_) => info!("File fail"),
    // };

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
