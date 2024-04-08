#![no_std]
#![no_main]

// use cortex_m_semihosting::hprint;
use embassy_executor::Spawner;
use embassy_stm32::gpio::{AnyPin, Level, Output, Pin, Speed};
use embassy_stm32::{time::Hertz, Config};
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
    let mut config = Config::default();
    {
        use embassy_stm32::rcc::*;
        config.rcc.hse = Some(Hse {
            freq: Hertz(8_000_000),
            mode: HseMode::Oscillator,
        });
        config.rcc.pll_src = PllSource::HSE;
        config.rcc.pll = Some(Pll {
            prediv: PllPreDiv::DIV4,
            mul: PllMul::MUL168,
            divp: Some(PllPDiv::DIV2), // 8mhz / 4 * 168 / 2 = 168Mhz.
            divq: Some(PllQDiv::DIV7), // 8mhz / 4 * 168 / 7 = 48Mhz.
            divr: None,
        });
        config.rcc.ahb_pre = AHBPrescaler::DIV1;
        config.rcc.apb1_pre = APBPrescaler::DIV4;
        config.rcc.apb2_pre = APBPrescaler::DIV2;
        config.rcc.sys = Sysclk::PLL1_P;
    }
    let p = embassy_stm32::init(config);
    // hprint!("Hello World!").unwrap();

    // Spawned tasks run in the background, concurrently.
    spawner.spawn(blink(p.PB2.degrade())).unwrap();

    loop {
        Timer::after_millis(300).await;
        SOME_SIGNAL.signal(SomeCommand::On);
        Timer::after_millis(300).await;
        SOME_SIGNAL.signal(SomeCommand::Off);
    }
}
