#ifndef __OS_H__
#define __OS_H__

#define OS_TICK (5)

#define UNLOCK (0)
#define LOCK (1)

typedef unsigned char tByte;
typedef unsigned int tWord;

extern tByte lock;

void OS_Init(void);
void OS_Start(void);
void OS_Update(void) __interrupt 0;

#endif //__OS_H__
