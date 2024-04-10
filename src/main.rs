#![no_std]
#![no_main]

use cortex_m::asm;
use cortex_m_semihosting::hprintln;

use embassy_executor::Spawner;
use embassy_stm32::gpio::{AnyPin, Input, Level, Output, Pin, Pull, Speed};
// use embassy_stm32::time::Hertz;
use embassy_stm32::exti::{AnyChannel, Channel, ExtiInput};
use embassy_sync::{blocking_mutex::raw::ThreadModeRawMutex, channel, signal};
use embassy_time::{Duration, Instant, Ticker};

use {defmt_rtt as _, panic_probe as _};

// enum SomeCommand {
//     On,
//     Off,
// }

// type LedSignal = signal::Signal<ThreadModeRawMutex, SomeCommand>;
type TriggerChannel = channel::Channel<ThreadModeRawMutex, Instant, 8>;
type SpeedChannel = channel::Channel<ThreadModeRawMutex, Duration, 8>;

#[embassy_executor::task]
async fn blink(sync_ch: &'static TriggerChannel, speed_ch: &'static SpeedChannel) {
    let mut last = Instant::from_ticks(0);

    loop {
        let new = sync_ch.receive().await;
        speed_ch.send(new - last).await;
        last = new;
    }
}

#[embassy_executor::task]
async fn trigger(pin: AnyPin, exti_ch: AnyChannel, speed_ch: &'static SpeedChannel) {
    let mut _button = ExtiInput::new(Input::new(pin, Pull::Down), exti_ch);

    let n_teeth = 24;
    let n_degrees = 720;
    let deg_per_teeth = n_degrees / n_teeth;

    loop {
        let res = speed_ch.receive().await;
        let period_us = res.as_micros() as u32;
        let _speed = 500_000 * deg_per_teeth / (3 * period_us);
        asm::nop();
    }
}

#[embassy_executor::main]
async fn main(spawner: Spawner) {
    asm::nop();

    let p = peripheral_config();

    hprintln!("Hello World!");

    // static LED_SIGNAL: LedSignal = LedSignal::new();
    static TRIGGER_CHANNEL: TriggerChannel = channel::Channel::new();
    static SPEED_CHANNEL: SpeedChannel = channel::Channel::new();

    // Spawned tasks run in the background, concurrently.
    spawner
        .spawn(blink(&TRIGGER_CHANNEL, &SPEED_CHANNEL))
        .unwrap();
    spawner
        .spawn(trigger(
            p.PC13.degrade(),
            p.EXTI13.degrade(),
            &SPEED_CHANNEL,
        ))
        .unwrap();

    let mut ticker = Ticker::every(Duration::from_millis(42));

    let mut cpt = 0u8;
    let mut led = Output::new(p.PB2, Level::High, Speed::Low);

    loop {
        ticker.next().await;
        led.set_low();

        ticker.next().await;

        if cpt < 23 {
            led.set_high();
            TRIGGER_CHANNEL.send(Instant::now()).await;
            cpt = cpt + 1;
        } else {
            cpt = 0;
        }
        // LED_SIGNAL.signal(SomeCommand::On);

        // ticker.next().await;
        // LED_SIGNAL.signal(SomeCommand::Off);
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
