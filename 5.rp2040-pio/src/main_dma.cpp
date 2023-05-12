#include <Arduino.h>
#include "stdio.h"
#include "main_dma.h"
#include "pio_dma.pio.h"
#include "hardware/pio.h"
#include "hardware/clocks.h"
#include "hardware/dma.h"

#define BUF_SIZE 6 * 3

void main2()
{
    Serial.begin(9600);
    // copy https://www.digikey.com/en/maker/projects/raspberry-pi-pico-and-rp2040-cc-part-3-how-to-use-pio/123ff7700bc547c79a504858c1bd8110

    PIO pio;
    int sm;

    char buf[BUF_SIZE];
    int dma_chan;
    dma_channel_config dma_chan_config;

    static const uint pin = 5;
    static const float pio_freq = 28000000;

    // PIO インスタンス (0 or 1)
    pio = pio0;

    // ステートマシン取得
    sm = pio_claim_unused_sm(pio, true);

    // 複数命令入れる場合 offset が使える
    // が、自動でオフセット入るようではある
    uint offset = pio_add_program(pio, &blinkdma_program);

    // クロックを指定
    float real_clock = (float)clock_get_hz(clk_sys);
    float div = real_clock / pio_freq;

    // コンフィグ
    pio_sm_config c = blinkdma_program_get_default_config(offset);

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

    // DMA
    dma_chan = dma_claim_unused_channel(true);
    dma_chan_config = dma_channel_get_default_config(dma_chan);
    channel_config_set_transfer_data_size(&dma_chan_config, DMA_SIZE_32);
    channel_config_set_read_increment(&dma_chan_config, true);
    channel_config_set_write_increment(&dma_chan_config, false);
    channel_config_set_dreq(&dma_chan_config, pio_get_dreq(pio, sm, true));
    dma_channel_configure(
        (uint)dma_chan,
        &dma_chan_config,
        &pio0_hw->txf[sm],
        buf,
        BUF_SIZE,
        false);

    // ステートマシンの開始
    pio_sm_set_enabled(pio, sm, true);

    while (true)
    {
        Serial.println("loop");

        for (int i = 0; i < 6; i++)
        {
            for (int j = 0; j < 6; j++)
            {
                int n = (i + j) % 6;
                switch (n)
                {
                case 0:
                    buf[3 * j] = 0xf;
                    buf[3 * j + 1] = 0x0;
                    buf[3 * j + 2] = 0x0;
                    break;
                case 1:
                    buf[3 * j] = 0x3;
                    buf[3 * j + 1] = 0x3;
                    buf[3 * j + 2] = 0x0;
                    break;
                case 2:
                    buf[3 * j] = 0x0;
                    buf[3 * j + 1] = 0xf;
                    buf[3 * j + 2] = 0x0;
                    break;
                case 3:
                    buf[3 * j] = 0x0;
                    buf[3 * j + 1] = 0x3;
                    buf[3 * j + 2] = 0x3;
                    break;
                case 4:
                    buf[3 * j] = 0x0;
                    buf[3 * j + 1] = 0x0;
                    buf[3 * j + 2] = 0xf;
                    break;
                case 5:
                    buf[3 * j] = 0x3;
                    buf[3 * j + 1] = 0x0;
                    buf[3 * j + 2] = 0x3;
                    break;
                }
            }
            dma_channel_set_read_addr(dma_chan, buf, true);
            sleep_ms(200);
        }
    }
}
