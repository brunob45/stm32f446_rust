use core::marker::PhantomData;

use embassy_stm32::gpio::low_level::AFType;
use embassy_stm32::gpio::AnyPin;
use embassy_stm32::time::Hertz;
use embassy_stm32::timer::{
    CaptureCompare16bitInstance, Channel1Pin, CountingMode, InputCaptureMode, InputTISelection
};
use embassy_stm32::PeripheralRef;
use embassy_stm32::{into_ref, timer, Peripheral};

pub struct SimpleCapture<'d, T> {
    inner: PeripheralRef<'d, T>,
}

impl<'d, T: CaptureCompare16bitInstance> SimpleCapture<'d, T> {
    pub fn new(tim: impl Peripheral<P = T> + 'd, freq: Hertz, counting_mode: CountingMode) -> Self {
        into_ref!(tim);

        T::enable_and_reset();

        let mut inner = tim;

        inner.set_counting_mode(counting_mode);

        // set prescaler
        {
            let f = freq.0;
            let timer_f = T::frequency().0;
            assert!(f > 0);
            let pclk_ticks_per_timer_period = timer_f / f;

            let psc = match u16::try_from(pclk_ticks_per_timer_period - 1) {
                Ok(psc) => psc,
                Err(_) => 0,
            };

            let arr = u16::MAX;

            let regs = T::regs();
            regs.psc().write(|r| r.set_psc(psc));
            regs.arr().write(|r| r.set_arr(arr));

            regs.egr().write(|r| r.set_ug(true));
        }

        inner.start();

        inner.enable_outputs();

        Self { inner }
    }

    pub fn get_ch1(
        &self,
        pin: impl Peripheral<P = impl Channel1Pin<T>> + 'd,
        mode: InputCaptureMode,
        tisel: InputTISelection,
    ) -> CapturePin<'d, T, Ch1> {
        into_ref!(pin);

        critical_section::with(|_| {
            pin.set_low();
            pin.set_as_af(pin.af_num(), AFType::Input);
            #[cfg(gpio_v2)]
            pin.set_speed(crate::gpio::Speed::VeryHigh);
        });

        self.inner.set_input_capture_mode(timer::Channel::Ch1, mode);
        self.inner
            .set_input_ti_selection(timer::Channel::Ch1, tisel);

        CapturePin {
            _pin: pin.map_into(),
            phantom: PhantomData,
        }
    }
}

pub enum Ch1 {}
pub enum Ch2 {}
pub enum Ch3 {}
pub enum Ch4 {}

pub struct CapturePin<'d, T, C> {
    _pin: PeripheralRef<'d, AnyPin>,
    phantom: PhantomData<(T, C)>,
}
