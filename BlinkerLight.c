#include "ADC.h"
#include "BlinkerLight.h"
#include "SW.h"
#include "GPIO.h"

SW_Output sw_output;
SW_Output sw_previous = unpressed;

static SW_Output current_SW_State = unpressed;
tWord digital_Reading = 0;


static void Light_Toggle(tByte left, tByte right);

void Blinker_Light_Init(void){
    //init the RIGHT & LEFT Blinkers PINS.
    GPIO_InitPortPin(GPIO_PORTB_CONTROL, GPIO_PIN_2, GPIO_OUT);
    GPIO_InitPortPin(GPIO_PORTB_CONTROL, GPIO_PIN_3, GPIO_OUT);

    ADC_Init();
    SW_Init();
}

void Blinker_Light_Update(void){
    //check if ur time came.
    static tByte current_Time = 0;
    current_Time += OS_TICK;
    if(current_Time < BLINKER_LIGHT_PRIODE){
        return;
    }
    current_Time = 0;
    SW_Update();
    get_SW_State(&sw_output);

    //toggling SWITCH.
    /*to prevent taking two sample of already pressed swich*/
    if((sw_previous == unpressed) && (sw_output == O_Pressed)){
        if(current_SW_State == unpressed){
            current_SW_State = O_Pressed;
        }else{
            current_SW_State = unpressed;
        }
    }
    sw_previous = sw_output;

    ADC_Update(CHANNEL_INPUT_1);
    ADC_Get(&digital_Reading);

    //high priority (WAIT BLINKER).
    if(current_SW_State == O_Pressed)
    {
        //turn on the RIGHT AND LEFT.
        Light_Toggle(LEFT_ON, RIGHT_ON);
        // GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_2, LEFT_ON);
        // GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_3, RIGHT_ON);
    }else{
        //look to the previous ADC state
        //then Apply it.
        if((digital_Reading < 1024) && (digital_Reading > 682)){
            //turn on RIGHT light.
            Light_Toggle(LEFT_OFF, RIGHT_ON);
            // GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_2, RIGHT_ON);
            //turn off LEFT light.
            // GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_3, LEFT_OFF);
        }
        else if((digital_Reading <= 682) && (digital_Reading > 341)){
            //turn OFF RIGHT light.
            GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_2, RIGHT_OFF);
            //turn OFF LEFT light.
            GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_3, LEFT_OFF);
        }
        else
        {
            //turn OFF RIGHT light.
            Light_Toggle(LEFT_ON, RIGHT_OFF);
            // GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_2, RIGHT_OFF);
            //turn ON LEFT light.
            // GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_3, LEFT_ON);
        }
    }


}
static void Light_Toggle(tByte left, tByte right){
    //ckeck time here to start from 0 when different code call it.
    static tWord toggling_Time = 0;
    toggling_Time += OS_TICK;
    if(toggling_Time > TOGGLE_LIGHT_PRIODE){
        toggling_Time = 0;
        if((left == LEFT_ON) && (right == RIGHT_ON)){
            if(right == GPIO_ReadPortPin(GPIO_PORTB_DATA, GPIO_PIN_2)){
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_2, RIGHT_OFF);
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_3, LEFT_OFF);}
            else{
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_2, RIGHT_ON);
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_3, LEFT_ON);
            }
        }
        else if((left == LEFT_OFF) && (right == RIGHT_ON)){
            if(right == GPIO_ReadPortPin(GPIO_PORTB_DATA, GPIO_PIN_2)){
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_2, RIGHT_OFF);
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_3, LEFT_OFF);
            }
            else{
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_2, RIGHT_ON);
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_3, LEFT_OFF);
            }
        }
        else if((left == LEFT_ON) && (right == RIGHT_OFF)){
            if(left == GPIO_ReadPortPin(GPIO_PORTB_DATA, GPIO_PIN_3)){
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_2, RIGHT_OFF);
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_3, LEFT_OFF);
            }
            else{
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_2, RIGHT_OFF);
                GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_3, LEFT_ON);
            }
        }
    }
}
