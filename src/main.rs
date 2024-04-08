#![no_std]
#![no_main]

use cortex_m::asm;
use cortex_m_semihosting::hprintln;

use embassy_executor::Spawner;
use embassy_stm32::gpio::{AnyPin, Level, Output, Pin, Speed};
// use embassy_stm32::time::Hertz;
use embassy_sync::{blocking_mutex::raw::ThreadModeRawMutex, signal::Signal};
use embassy_time::{Duration, Ticker};

use {defmt_rtt as _, panic_probe as _};

enum SomeCommand {
    On,
    Off,
}

type LedSignal = Signal<ThreadModeRawMutex, SomeCommand>;

#[embassy_executor::task]
async fn blink(pin: AnyPin, signal: &'static LedSignal) {
    let mut led = Output::new(pin, Level::High, Speed::Low);

    loop {
        match signal.wait().await {
            SomeCommand::Off => led.set_low(),
            SomeCommand::On => led.set_high(),
        };
    }
}

#[embassy_executor::main]
async fn main(spawner: Spawner) {
    asm::nop();

    let p = peripheral_config();

    hprintln!("Hello World!");

    static LED_SIGNAL: LedSignal = LedSignal::new();

    // Spawned tasks run in the background, concurrently.
    spawner.spawn(blink(p.PB2.degrade(), &LED_SIGNAL)).unwrap();

    let mut ticker = Ticker::every(Duration::from_millis(500));

    loop {
        ticker.next().await;
        LED_SIGNAL.signal(SomeCommand::On);

        ticker.next().await;
        LED_SIGNAL.signal(SomeCommand::Off);
    }
}

fn peripheral_config() -> embassy_stm32::Peripherals {
    use embassy_stm32::rcc::*;

    let mut config = embassy_stm32::Config::default();

    // config.rcc.hse = Some(Hse {
    //     freq: Hertz(8_000_000),
    //     mode: HseMode::Oscillator,
    // });
    // config.rcc.pll_src = PllSource::HSE;
    config.rcc.pll = Some(Pll {
        prediv: PllPreDiv::DIV8,
        mul: PllMul::MUL168,
        divp: Some(PllPDiv::DIV2), // 8mhz / 4 * 168 / 2 = 168Mhz.
        divq: Some(PllQDiv::DIV7), // 8mhz / 4 * 168 / 7 = 48Mhz.
        divr: Some(PllRDiv::DIV2),
    });
    config.rcc.ahb_pre = AHBPrescaler::DIV1;
    config.rcc.apb1_pre = APBPrescaler::DIV4;
    config.rcc.apb2_pre = APBPrescaler::DIV2;
    config.rcc.sys = Sysclk::PLL1_P;

    embassy_stm32::init(config)
}
