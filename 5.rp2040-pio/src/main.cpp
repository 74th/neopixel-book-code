#include <Arduino.h>
#include "main_1led.h"
#include "main_dma.h"

#define APP 2

void setup()
{
  switch (APP)
  {
  case 1:
    main1();
    break;
  case 2:
    main2();
    break;
  }
}

void loop()
{
}
