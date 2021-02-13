#ifndef __WELCOME_LIGHT_H__
#define __WELCOME_LIGHT_H__
#include "OS.h"
#define WEL_LEDS (8)

#define LED_ON   (1)
#define LED_OFF  (0)

#define NUMBEROFREPEATION (3)
#define WEL_LIGHT_PRIODE       (10)
#define WELCOME_PATTERN_PRIODE (500)



void welcome_Light_Init(void);
void welcome_Light_Update(void);
tByte welcome_Pattern_Update(void);

#endif //__WELCOME_LIGHT_H__
