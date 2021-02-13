#include "OS.h"
#include "FrontLight.h"
#include "BlinkerLight.h"
#include "WelcomeLight.h"
#include "DRL.h"
#include "timer.h"

tByte lock = UNLOCK;
void OS_Init(void){
    TIMER_PRESCAlER;
    PRESCALER_RATE_SELECT;
    DISABLE_TIMER;
}

void OS_Start(void){
    CLEAR_TIMER_FLAG;
    UPDATE_TIMER(OS_TICK);
    ENABLE_INTERRUPT;
    ENABLE_GLOBAL_INTERRUPT;
    ENABLE_TIMER;
}

//execute when interrupt came from timer...
void OS_Update(void) __interrupt 0
{
    //reload the TIMER REGISTER.
    CLEAR_TIMER_FLAG;
    UPDATE_TIMER(OS_TICK);
    //welcome Light run ONCE
    //NOTE USE:"if" if wanna light sys work while "WELCOME LIGHT WORKING".
    //make SURE to adjust the time.
    //NOTE USE:"while" if wanna block the sys tile end of welcome light.
    if(lock == LOCK){
        // functions to update
        Blinker_Light_Update();//10ms
        FrontLight_Update();//20ms
        DRL_Update();//20ms
    }
    else if(lock == UNLOCK){
        welcome_Light_Update();//5ms
    }
    // ignore = welcome_Pattern_Update();//80ms

}
