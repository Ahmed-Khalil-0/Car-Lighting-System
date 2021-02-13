#ifndef __TIMER_H__
#define __TIMER_H__

#include <pic16f877a.h>


#define GET_TIMER_FLAG (TMR0IF)
#define CLEAR_TIMER_FLAG (TMR0IF = 0)

#define ENABLE_TIMER (T0CS = 0)
#define DISABLE_TIMER (T0CS = 1)

//Configure the perscaler timer
#define TIMER_PRESCAlER (PSA = 0)
#define WDT_PRESCAlER   (PSA = 1)

#define PRESCALER_RATE_SELECT \
                    PS0 = 1;\
                    PS1 = 0;\
                    PS2 = 0;

#define UPDATE_TIMER(TIME)  (TMR0 = (256 - ((TIME) * 250)))

#define ENABLE_INTERRUPT         (TMR0IE = 1)
#define ENABLE_GLOBAL_INTERRUPT  (GIE = 1)
#define DISABLE_GLOBAL_INTERRUPT (GIE = 0)
#endif //__TIMER_H__
