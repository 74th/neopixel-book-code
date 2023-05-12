# 『マイコンさんに知らないプロトコルを喋らせる技術』サンプルコード（技術書典 14 出展同人誌）

NeoPixel の光らせ方を解説した書籍のサンプルコードです。

すべて PlatformIO を用いて構築します。

動作確認環境

- 1. 自作 PC
  - OS: Ubuntu 23.04
  - CPU Arch: amd64 (RYZEN 2700)
  - Memory: 32GB
- 2. Rock 5B
  - OS: Armbian Ubuntu 22.04
  - CPU Arch: aarch64 (RK3588)
  - Memory: 16GB

## 2. CPU を使って制御する: STM32F103 で CPU で GPIO を H/L に制御する

[./2.stm32f103-cpu](./2.stm32f103-cpu)

このコードは CPU による GPIO 制御だけでは辛いことを示すコードです

- MCU: STMicro STM32F103
- GPIO: A5
- [STM32CubeMX でのクロックの設定](./2.stm32f103-cpu/clock-settings.png)

## 2. CPU を使って制御する: CH32V003 で CPU だけで制御する

[./2.ch32v003-cpu](./2.ch32v003-cpu)

- MCU: WCH CH32V003
- GPIO: D0

## 3. Timer と DMA を使って制御する（STM32F103）

[./3.stm32f103-dma/](./3.stm32f103-dma/)

- MCU: STMicro STM32F103
- GPIO:
- [STM32CubeMX でのクロックの設定](3.stm32f103-dma/clock.png.png)
- [STM32CubeMX での Timer2 の設定](3.stm32f103-dma/tim2_config.png)
- [STM32CubeMX での DMA の設定](3.stm32f103-dma/tim2_dma_config.png)

## 4. SPI を使って制御する（RP2040）

[./4.rp2040-spi/](./4.rp2040-spi/)

- MCU: Rapberry Pi RP2040
- GPIO: 23

## 5. RP2040 の Programable IO で制御する（RP2040）

[./5.rp2040-pio/](./5.rp2040-pio/)

- MCU: Rapberry Pi RP2040
- GPIO: 5

## License

MIT
