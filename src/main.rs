#![no_std]
#![no_main]

use cortex_m::asm;
use cortex_m_semihosting::hprintln;

use embassy_executor::Spawner;
use embassy_stm32::gpio::{Level, Output, Speed};
use embassy_stm32::time::Hertz;
// use embassy_sync::{blocking_mutex::raw::ThreadModeRawMutex, signal::Signal};
use embassy_time::{Duration, Instant, Ticker};

use {defmt_rtt as _, panic_probe as _};

#[embassy_executor::main]
async fn main(_spawner: Spawner) {
    let p = peripheral_config();

    hprintln!("Hello World!");

    let mut led = Output::new(p.PB2, Level::High, Speed::Low);

    let begin = Instant::now().as_micros();
    for _ in 0..1000000 {
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
    }
    let time1 = Instant::now().as_micros() - begin;

    let begin = Instant::now().as_micros();
    for _ in 0..1000000 {
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
    }
    let time2 = Instant::now().as_micros() - begin;

    let begin = Instant::now().as_micros();
    for _ in 0..1000000 {
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
    }
    let time4 = Instant::now().as_micros() - begin;

    let begin = Instant::now().as_micros();
    for _ in 0..1000000 {
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
        asm::nop();
    }
    let time8 = Instant::now().as_micros() - begin;
    hprintln!("1 {}", time1);
    hprintln!("2 {}", time2);
    hprintln!("4 {}", time4);
    hprintln!("8 {}", time8);

    let mut ticker = Ticker::every(Duration::from_millis(500));
    loop {
        ticker.next().await;
        led.set_high();

        ticker.next().await;
        led.set_low();
    }
}

fn peripheral_config() -> embassy_stm32::Peripherals {
    use embassy_stm32::rcc::*;

    let mut config = embassy_stm32::Config::default();

    config.rcc.hse = Some(Hse {
        freq: Hertz(8_000_000),
        mode: HseMode::Oscillator,
    });

    config.rcc.pll = Some(Pll {
        prediv: PllPreDiv::DIV4,
        mul: PllMul::MUL168,
        divp: Some(PllPDiv::DIV2),
        divq: Some(PllQDiv::DIV7),
        divr: Some(PllRDiv::DIV2),
    });

    // automatic configuration of PLL Source Mux
    config.rcc.pll_src = match config.rcc.hse {
        Some(_) => PllSource::HSE,
        None => PllSource::HSI,
    };

    // automatic configuration of System Clock Mux
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
