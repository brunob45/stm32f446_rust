#![no_std]
#![no_main]

use cortex_m::asm;

use embassy_executor::Spawner;
use embassy_stm32::{gpio, time::{self, Hertz}};
use embassy_time::{Duration, Ticker, Timer};

use {defmt_rtt as _, panic_probe as _};

mod capture;

#[embassy_executor::task]
async fn blink(pin: gpio::AnyPin) {
    let mut led = gpio::Output::new(pin, gpio::Level::High, gpio::Speed::Low);

    let mut ticker = Ticker::every(Duration::from_millis(500));

    loop {
        led.toggle();
        ticker.next().await;
    }
}

#[embassy_executor::main]
async fn main(spawner: Spawner) {
    asm::nop();

    let p = embassy_init();

    // Spawned tasks run in the background, concurrently.
    spawner.spawn(blink(p.PB2.into())).unwrap();

    let _capture = capture::SimpleCapture::new(p.TIM3, Hertz(1000000), embassy_stm32::timer::CountingMode::EdgeAlignedUp);

    loop {
        Timer::after_millis(0).await;
    }
}

fn embassy_init() -> embassy_stm32::Peripherals {
    use embassy_stm32::rcc::*;

    let mut config = embassy_stm32::Config::default();
    config.rcc.hse = Some(Hse {
        freq: time::Hertz(8_000_000),
        mode: HseMode::Oscillator,
    });
    config.rcc.pll_src = match config.rcc.hse {
        Some(_) => PllSource::HSE,
        None => PllSource::HSI,
    };
    config.rcc.pll = Some(Pll {
        prediv: PllPreDiv::DIV4,
        mul: PllMul::MUL168,
        divp: Some(PllPDiv::DIV2), // 8mhz / 4 * 168 / 2 = 168Mhz.
        divq: Some(PllQDiv::DIV7), // 8mhz / 4 * 168 / 7 = 48Mhz.
        divr: None,
    });
    config.rcc.sys = match (config.rcc.pll, config.rcc.hse) {
        (None, None) => Sysclk::HSI,
        (None, _) => Sysclk::HSE,
        (_, _) => Sysclk::PLL1_P,
    };
    config.rcc.ahb_pre = AHBPrescaler::DIV1;
    config.rcc.apb1_pre = APBPrescaler::DIV4;
    config.rcc.apb2_pre = APBPrescaler::DIV2;

    embassy_stm32::init(config)
}
