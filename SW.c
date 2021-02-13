#include "SW.h"
#include "GPIO.h"
#include "OS.h"//if exist.

static SW_State sw_state    = pre_pressed;
static SW_Output sw_output  = unpressed;
static tByte currentSample  = SW_DISACTIVE;
static tByte previousSample = SW_DISACTIVE;

void SW_Init(void){

    //init the switch pin. to IN direction.
    GPIO_InitPortPin(GPIO_PORTB_CONTROL, GPIO_PIN_7, GPIO_IN);
}

void SW_Update(void){
    static tByte current_Time = 0;
    //check if ur time came OR not.
    current_Time += OS_TICK;
    if(current_Time < SW_PERIODE){
    //if not return.
        return;
    }
    //if :rest ur timer.
    current_Time = 0;
    //take sample to currentSample.
    currentSample = GPIO_ReadPortPin(GPIO_PORTB_DATA, GPIO_PIN_7);
    //look to table of the samples pattern.
    //if one meet then assign "SW_Output"
    if((previousSample == SW_DISACTIVE) && (currentSample == SW_DISACTIVE)){
        sw_state = released;
        sw_output = unpressed;
    }
    else if((previousSample == SW_DISACTIVE) && (currentSample == SW_ACTIVE)){
        sw_state = pre_pressed;
        sw_output = unpressed;
    }
    else if((previousSample == SW_ACTIVE) && (currentSample == SW_ACTIVE)){
        sw_state = pressed;
        sw_output = O_Pressed;
    }
    else if((previousSample == SW_ACTIVE) && (currentSample == SW_DISACTIVE)){
        sw_state = pre_released;
        sw_output = unpressed;
    }
    //move the currentSample to previousSample.
    previousSample = currentSample;
}

void get_SW_State(SW_Output* sw){
    *sw = sw_output;
}
