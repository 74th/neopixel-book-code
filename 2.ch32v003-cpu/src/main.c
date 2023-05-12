/********************************** (C) COPYRIGHT *******************************
 * File Name          : main.c
 * Author             : WCH
 * Version            : V1.0.0
 * Date               : 2022/08/08
 * Description        : Main program body.
 *********************************************************************************
 * Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
 * Attention: This software (modified or not) and binary are used for
 * microcontroller manufactured by Nanjing Qinheng Microelectronics.
 *******************************************************************************/

/*
 *@Note
 GPIO routine:
 PD0 push-pull output.

*/

#include "debug.h"

/* Global define */
typedef struct __Status
{
    GPIO_TypeDef *gpio;
    uint16_t pins;
    char *name;
    uint16_t state;
} Status;

#define LED_PIN GPIO_Pin_0

void GPIO_INIT(void)
{
    GPIO_InitTypeDef GPIO_InitStructure = {0};

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
    GPIO_InitStructure.GPIO_Pin = LED_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD, ENABLE);
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOD, &GPIO_InitStructure);
}

#define LED_NUM 3
#define BUFFER_LEN LED_NUM * 3
uint8_t data[BUFFER_LEN] = {0xff, 0x00, 0x00, 0x00, 0xff, 0x00, 0x00, 0x00, 0xff};
// uint16_t data[BUFFER_LEN] = {0b010101010101, 0b010101010101, 0b010101010101, 0b010101010101, 0b010101010101, 0b010101010101};
uint32_t h = LED_PIN;
uint32_t l = LED_PIN << 16;

int main(void)
{
    SystemInit();
    // NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
    Delay_Init();
    USART_Printf_Init(115200);
    printf("@@1");
    GPIO_INIT();

    Delay_Ms(100);
    int i = 0;

    while (1)
    {
        Delay_Ms(100);
        task();
    }
}

void task()
{
    uint32_t h = LED_PIN;
    uint32_t l = LED_PIN << 16;
    uint8_t data[BUFFER_LEN] = {0xff, 0x00, 0x00, 0x00, 0xff, 0x00, 0x00, 0x00, 0xff};

    for (int i = 0; i < BUFFER_LEN; i++)
    {
        uint16_t c = data[i];
        for (int j = 0; j < 8; j++)
        {
            if (c & 0x1)
            {
                GPIOD->BSHR = h;
                asm("c.nop 7");
                GPIOD->BSHR = l;
            }
            else
            {
                GPIOD->BSHR = h;
                GPIOD->BSHR = l;
            }
            c = c >> 1;
            asm("c.nop 7");
        }
    }
}
