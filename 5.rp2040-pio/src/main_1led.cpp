#include <Arduino.h>
#include "stdio.h"
#include "main_1led.h"
#include "pio_1led.pio.h"
#include "hardware/pio.h"
#include "hardware/clocks.h"
#include "hardware/dma.h"

#define BUF_SIZE 3

void main1()
{
  Serial.begin(9600);

  PIO pio;
  int sm;
  // copy https://www.digikey.com/en/maker/projects/raspberry-pi-pico-and-rp2040-cc-part-3-how-to-use-pio/123ff7700bc547c79a504858c1bd8110

  static const uint pin = 5;
  static const float pio_freq = 28000000;

  char transmitBuf[BUF_SIZE];

  // PIO インスタンス (0 or 1)
  pio = pio0;

  // ステートマシン取得
  sm = pio_claim_unused_sm(pio, true);

  // 複数命令入れる場合 offset が使える
  // が、自動でオフセット入るようではある
  uint offset = pio_add_program(pio, &blink1_program);

  // クロックを指定
  float real_clock = (float)clock_get_hz(clk_sys);
  float div = real_clock / pio_freq;

  // コンフィグ
  pio_sm_config c = blink1_program_get_default_config(offset);

  // GPIO を PIO で使うように初期化
  pio_gpio_init(pio, pin);

  // このPIOプログラムで使う最初のピンと、ピンの数を指定
  // PIOにおいてピンは連続した番号でしか使えない
  sm_config_set_set_pins(&c, pin, 1);
  sm_config_set_out_pins(&c, pin, 1);

  sm_config_set_out_shift(&c, true, false, 0); // shift_right, no-autopull

  // 各ピンの方向を指定
  // PIOプログラムでもできるか、32命令しか入らないので、事前に指定しておく
  pio_sm_set_consecutive_pindirs(pio, sm, pin, 1, true);

  sm_config_set_fifo_join(&c, PIO_FIFO_JOIN_TX);

  // クロック数を指定
  sm_config_set_clkdiv(&c, div);

  // ステートマシンの初期化
  pio_sm_init(pio, sm, offset, &c);

  // ステートマシンの開始
  pio_sm_set_enabled(pio, sm, true);

  uint32_t t1 = 0xff0000;
  uint32_t t2 = 0x00ff00;
  uint32_t t3 = 0x0000ff;

  while (true)
  {
    Serial.println("loop");

    pio_sm_put(pio, sm, t1);
    sleep_ms(500);
    pio_sm_put(pio, sm, t2);
    sleep_ms(500);
    pio_sm_put(pio, sm, t3);
    sleep_ms(500);
  }
}
