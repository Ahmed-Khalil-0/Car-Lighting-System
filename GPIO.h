#ifndef __GPIO_H__
#define __GPIO_H__

#include <pic16f877a.h>

//MU Abstraction layer.
//sepcific for that MU.
//PIN's definations
#define GPIO_PIN_0              (0)
#define GPIO_PIN_1              (1)
#define GPIO_PIN_2              (2)
#define GPIO_PIN_3              (3)
#define GPIO_PIN_4              (4)
#define GPIO_PIN_5              (5)
#define GPIO_PIN_6              (6)
#define GPIO_PIN_7              (7)

/* GPIO Port Registers redefinition */
#define GPIO_PORTA_DATA         (PORTA)
#define GPIO_PORTA_CONTROL      (TRISA)

#define GPIO_PORTB_DATA         (PORTB)
#define GPIO_PORTB_CONTROL      (TRISB)

#define GPIO_PORTC_DATA         (PORTC)
#define GPIO_PORTC_CONTROL      (TRISC)

#define GPIO_PORTD_DATA         (PORTD)
#define GPIO_PORTD_CONTROL      (TRISD)

#define GPIO_PORTE_DATA         (PORTE)
#define GPIO_PORTE_CONTROL      (TRISE)

/* GPIO direction setting */
#define GPIO_OUT                (0)
#define GPIO_IN                 (1)

/* GPIO port operations */
#define GPIO_InitPort(CONTROL, DIRECTION)   ((CONTROL) = ((DIRECTION)? (~0):(0)))
#define GPIO_WritePort(PORT, DATA)          ((PORT) = (DATA))
#define GPIO_ReadPort(PORT)                 (PORT)

/* GPIO port pin operations */
#define GPIO_InitPortPin(CONTROL, PIN, DIRECTION)   ((CONTROL) = (CONTROL & (~(1 << PIN)))|(DIRECTION << PIN))
#define GPIO_WritePortPin(PORT, PIN, DATA)          ((PORT) = (PORT & (~(1 << PIN)))|(DATA << PIN))
#define GPIO_ReadPortPin(PORT, PIN)                 (((PORT) & (1 << PIN)) >> (PIN))
#endif // __GPIO_H__
