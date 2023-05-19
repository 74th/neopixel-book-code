#include <Arduino.h>
#include <stdio.h>
#include <string.h>
#include <SPI.h>
#include "pico/binary_info.h"
#include "hardware/spi.h"

#define LED_NUM 6
#define DATA_SIZE LED_NUM * 3
#define BUF_SIZE DATA_SIZE * 8
#define NEOSPI_0 0b11000000   // 1ビット 値0
#define NEOSPI_1 0b11110000   // 1ビット 値1
#define NEOSPI_RST 0b00000000 // REST

void setup()
{
    Serial.begin(9600);
    gpio_set_function(23, GPIO_FUNC_SPI);
    _spi_init(spi0, 5710000);
    spi_set_format(spi0, 8, SPI_CPOL_0, SPI_CPHA_0, SPI_MSB_FIRST);
    Serial.write("init\n");
}

int n = 0;

void loop()
{
    Serial.write("loop\n");

    uint8_t spi_buf[BUF_SIZE];
    uint8_t data[DATA_SIZE];

    for (int i = 0; i < LED_NUM; i++)
    {
        switch ((n + i) % 6)
        {
        case 0:
            data[i * 3] = 0x20;
            data[i * 3 + 1] = 0x00;
            data[i * 3 + 2] = 0x00;
            break;
        case 1:
            data[i * 3] = 0x20;
            data[i * 3 + 1] = 0x20;
            data[i * 3 + 2] = 0x00;
            break;
        case 2:
            data[i * 3] = 0x00;
            data[i * 3 + 1] = 0x20;
            data[i * 3 + 2] = 0x00;
            break;
        case 3:
            data[i * 3] = 0x00;
            data[i * 3 + 1] = 0x20;
            data[i * 3 + 2] = 0x20;
            break;
        case 4:
            data[i * 3] = 0x00;
            data[i * 3 + 1] = 0x00;
            data[i * 3 + 2] = 0x20;
            break;
        case 5:
            data[i * 3] = 0x20;
            data[i * 3 + 1] = 0x00;
            data[i * 3 + 2] = 0x20;
            break;
        }
    }

    int m = 0;
    for (int i = 0; i < DATA_SIZE; i++)
    {
        uint16_t c = data[i];
        for (int j = 0; j < 8; j++)
        {
            if (c & 0x1)
            {
                spi_buf[m++] = NEOSPI_1;
            }
            else
            {
                spi_buf[m++] = NEOSPI_0;
            }
            c = c >> 1;
        }
    }

    spi_write_blocking(spi0, spi_buf, BUF_SIZE);
    n++;
    delay(500);
}
