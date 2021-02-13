#include "FrontLight.h"
#include "GPIO.h"
#include "ADC.h"
#include "OS.h"

static tWord digital_Reading = 0;
static Front_Light_Status frontLightStatus;

void FrontLight_Init(void){
    //Init the GPIO pins.
    GPIO_InitPortPin(GPIO_PORTB_CONTROL, GPIO_PIN_0, GPIO_OUT);
    GPIO_InitPortPin(GPIO_PORTB_CONTROL, GPIO_PIN_1, GPIO_OUT);
    //turn OFF high light.
    GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_0, LIGHT_OFF);
    //turn OFF LOW light.
    GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_1, LIGHT_OFF);
    //Init the ADC.
    ADC_Init();
}

void FrontLight_Update(void){
    static tByte current_time = 0;
    current_time += OS_TICK;
    if(current_time < FRONTLIGHT_PRIODE){
        return;
    }
    current_time = 0;

    ADC_Update(CHANNEL_INPUT_0);

    ADC_Get(&digital_Reading);
    if((digital_Reading < 1024) && (digital_Reading > 682)){
        //turn on high light.
        GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_0, LIGHT_ON);
        //turn off LOW light.
        GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_1, LIGHT_OFF);
        frontLightStatus = high;
    }
    else if((digital_Reading <= 682) && (digital_Reading > 341)){
        //turn OFF high light.
        GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_0, LIGHT_OFF);
        //turn ON LOW light.
        GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_1, LIGHT_ON);
        frontLightStatus = low;
    }
    else
    {
        //turn OFF high light.
        GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_0, LIGHT_OFF);
        //turn OFF LOW light.
        GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_1, LIGHT_OFF);
        frontLightStatus = off;
    }
}
void FrontLight_Get_Status(Front_Light_Status* frontStatus)
{
    *frontStatus = frontLightStatus;
}
