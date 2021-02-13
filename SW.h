#ifndef __SW_H__
#define __SW_H__

#define SW_PERIODE (5)

#define SW_ACTIVE (0)
#define SW_DISACTIVE (1)

typedef enum {
    unpressed = 0,
    O_Pressed
}SW_Output;

typedef enum{
    pre_pressed = 0,
    pressed,
    pre_released,
    released
}SW_State;

void SW_Init(void);
void SW_Update(void);
void get_SW_State(SW_Output*);

#endif // __SW_H__
