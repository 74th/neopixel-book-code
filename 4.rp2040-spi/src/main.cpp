#include <Arduino.h>
#include <stdio.h>
#include <string.h>
#include <SPI.h>
#include "pico/binary_info.h"
#include "hardware/spi.h"

#define LED_NUM 6
#define BUF_LEN LED_NUM * 24
#define NEOSPI_0 0b11000000   // 1ビット 値0
#define NEOSPI_1 0b11110000   // 1ビット 値1
#define NEOSPI_RST 0b00000000 // REST

uint8_t buf[BUF_LEN];

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
  for (int i = 0; i < LED_NUM; i++)
  {
    for (int j = 0; j < 3; j++)
    {
      int m = (i + n) % 3;
      for (int k = 0; k < 8; k++)
      {
        if (m == j)
        {
          buf[i * 24 + j * 8 + k] = NEOSPI_1;
        }
        else
        {
          buf[i * 24 + j * 8 + k] = NEOSPI_0;
        }
      }
    }
  }
  spi_write_blocking(spi0, buf, BUF_LEN);
  n++;
  delay(1000);
}
