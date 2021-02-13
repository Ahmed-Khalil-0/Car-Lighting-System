#ifndef __BLINKER_LIGHT_H__
#define __BLINKER_LIGHT_H__

#define BLINKER_LIGHT_PRIODE (10)
#define TOGGLE_LIGHT_PRIODE (50)


#define LEFT_ON  (1)
#define RIGHT_ON (1)

#define LEFT_OFF  (0)
#define RIGHT_OFF (0)


void Blinker_Light_Init(void);
void Blinker_Light_Update(void);

#endif //__BLINKER_LIGHT_H__
