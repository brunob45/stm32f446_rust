#![no_std]
#![no_main]

use defmt::*;
use embassy_executor::Spawner;
use embassy_stm32::gpio::{AnyPin, Level, Output, Pin, Speed};
use embassy_sync::{blocking_mutex::raw::ThreadModeRawMutex, signal::Signal};
use embassy_time::Timer;
use {defmt_rtt as _, panic_probe as _};

enum SomeCommand {
    On,
    Off,
}

static SOME_SIGNAL: Signal<ThreadModeRawMutex, SomeCommand> = Signal::new();

#[embassy_executor::task]
async fn blink(pin: AnyPin) {
    let mut led = Output::new(pin, Level::High, Speed::Low);

    loop {
        match SOME_SIGNAL.wait().await {
            SomeCommand::Off => led.set_low(),
            SomeCommand::On => led.set_high(),
        };
    }
}

#[embassy_executor::main]
async fn main(spawner: Spawner) {
    let p = embassy_stm32::init(Default::default());
    info!("Hello World!");

    // Spawned tasks run in the background, concurrently.
    spawner.spawn(blink(p.PB2.degrade())).unwrap();

    loop {
        Timer::after_millis(300).await;
        SOME_SIGNAL.signal(SomeCommand::On);
        Timer::after_millis(300).await;
        SOME_SIGNAL.signal(SomeCommand::Off);
    }
}
