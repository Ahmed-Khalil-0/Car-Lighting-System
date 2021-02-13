#ifndef __FRONT_LIGHT_H__
#define __FRONT_LIGHT_H__

#define LIGHT_ON  1
#define LIGHT_OFF 0

typedef enum{
    off = 0,
    low,
    high
}Front_Light_Status;

#define FRONTLIGHT_PRIODE (5)

void FrontLight_Init(void);
void FrontLight_Update(void);
void FrontLight_Get_Status(Front_Light_Status*);

#endif // __FRONT_LIGHT_H__
