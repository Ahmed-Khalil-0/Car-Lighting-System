#include <stdio.h>
#include <stdlib.h>
#include <pic16f877a.h>
#include "FrontLight.h"
#include "BlinkerLight.h"
#include "WelcomeLight.h"
#include "DRL.h"
#include "OS.h"

tWord __at(0x2007) CONFIG = _HS_OSC & _WDT_OFF & _PWRTE_ON & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _WRT_OFF & _DEBUG_OFF & _CP_OFF;

void main(void)
{
    welcome_Light_Init();
    FrontLight_Init();
    Blinker_Light_Init();
    DRL_Init();
    OS_Init();
    OS_Start();
    while(1){

    }

}
