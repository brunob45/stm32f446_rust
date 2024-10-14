# STM32F446RET6 with embassy

For now, blink an LED and USB-CDC echo

# Requirements
From the [Rust Embedded book](https://docs.rust-embedded.org/book/intro/install.html).
- rust version `1.81.0` or newer: `rustc -V`
- toolchain: `rustup target add thumbv7em-none-eabihf`
- binutils:
  - `cargo install cargo-binutils`
  - `rustup component add llvm-tools-preview`
- generate: `cargo install cargo-generate`

- Debug requirements
  - [arm gnu toolchain](https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads)
  - [openocd](https://github.com/xpack-dev-tools/openocd-xpack/releases)
  - [STLink driver](https://www.st.com/en/development-tools/stsw-link009.html)
  - [probe-rs](https://probe.rs/)

# Build
- fetch submodules: `git submodule update --init`
- build: `cargo build`

# Debug
- `openocd`
- `cargo run`

# References
- https://github.com/embassy-rs/embassy
- https://github.com/rust-embedded/cortex-m-quickstart
