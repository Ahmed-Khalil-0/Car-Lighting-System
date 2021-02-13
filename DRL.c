#include "DRL.h"
#include "OS.h"
#include "ADC.h"
#include "GPIO.h"
#include "FrontLight.h"

void DRL_Init(void)
{
    //ADC already Init.
    ADC_Init();
    //GPIO OUT LED.
    GPIO_InitPortPin(GPIO_PORTB_CONTROL, GPIO_PIN_4, GPIO_OUT);
}

void DRL_Update(void)
{
    tWord sensor_Read;
    Front_Light_Status frontStatus;
    //check ur time came or not.
    static tByte current_Time = 0;
    current_Time += OS_TICK;
    if(current_Time < DRL_PRIODE){
        return;
    }
    current_Time = 0;
    //get the CURRENT ADC READ.(DAY OR NIGHT)
    ADC_Update(CHANNEL_INPUT_2);
    ADC_Get(&sensor_Read);

    //based on the sensor read do something.
    if((sensor_Read < 1024) && (sensor_Read > 511)){
//Day light
        GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_4, DAY_LIGHT_ON);


    }
    else if((sensor_Read <= 511) && (sensor_Read >= 0)){
//AT NIGHT
    //check front status HIGH OR LOW turn DRL ON.
    FrontLight_Get_Status(&frontStatus);
    if((frontStatus == low) || (frontStatus ==high)){
        GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_4, DAY_LIGHT_ON);
    }
    else{
        GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_4, DAY_LIGHT_OFF);
    }
    }
}
