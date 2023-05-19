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
#define DATA_SIZE LED_NUM * 3
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
    int n = 0;

    while (1)
    {
        Delay_Ms(300);
        task(n);
        n++;
    }
}

void task(int n)
{
    uint32_t h = LED_PIN;
    uint32_t l = LED_PIN << 16;
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

    for (int i = 0; i < DATA_SIZE; i++)
    {
        uint16_t c = data[i];
        for (int j = 0; j < 8; j++)
        {
            if (c & 0x1)
            {
                GPIOD->BSHR = h;
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 16");
                GPIOD->BSHR = l;
            }
            else
            {
                GPIOD->BSHR = h;
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                GPIOD->BSHR = l;
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
                asm("c.nop 31");
            }
            c = c >> 1;
        }
    }
}
