#include "GPIO.h"
#include "OS.h"
#include "WelcomeLight.h"

static void turn_On_Led(tByte led_Num);

static tByte wel_Light_Pattern[WEL_LEDS] = {LED_OFF};

extern tByte lock;

void welcome_Light_Init(void){
    //init 3 out pins
    GPIO_InitPortPin(GPIO_PORTC_CONTROL, GPIO_PIN_0, GPIO_OUT);
    GPIO_InitPortPin(GPIO_PORTC_CONTROL, GPIO_PIN_1, GPIO_OUT);
    GPIO_InitPortPin(GPIO_PORTC_CONTROL, GPIO_PIN_2, GPIO_OUT);
    GPIO_InitPortPin(GPIO_PORTB_CONTROL, GPIO_PIN_5, GPIO_OUT);
    GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_5, LED_ON);

}

void welcome_Light_Update(void){
    static tByte current_Time = 0;
    static tByte buffer_Pointer = 0;
    static tByte num_Of_Scanning = 0;
    current_Time += OS_TICK;//not sure
    if(current_Time < WEL_LIGHT_PRIODE){
        return;
    }
    current_Time = 0;
    //loop around the Buffer
    // wel_Light_Pattern[buffer_Pointer]
        //get the Value from BUFFER
        //Know the index of the led that would turn ON.
    turn_On_Led(buffer_Pointer);

    if(NUMBEROFREPEATION*(WEL_LEDS) == num_Of_Scanning){
        GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_5, LED_OFF);
        lock = LOCK;
    }

    num_Of_Scanning++;
    buffer_Pointer++;
}

// tByte welcome_Pattern_Update(void){
//     static tWord current_Time = 0;
//     static tByte current_Index = 0;
//     current_Time += OS_TICK;
//     if(current_Time < WELCOME_PATTERN_PRIODE){
//         return 0;
//     }
//     current_Time = 0;
//     if(current_Index > (WEL_LEDS-1)){
//         GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_5, LED_OFF);
//         return 1;
//
//     }
//     wel_Light_Pattern[current_Index] = LED_ON;
//     current_Index++;
//     return 0;
// }

//which LED's to turn on.
static void turn_On_Led(tByte led_Num){
    GPIO_WritePortPin(GPIO_PORTC_DATA, GPIO_PIN_0, ((led_Num&1)>>0));
    GPIO_WritePortPin(GPIO_PORTC_DATA, GPIO_PIN_1, ((led_Num&2)>>1));
    GPIO_WritePortPin(GPIO_PORTC_DATA, GPIO_PIN_2, ((led_Num&4)>>2));

}
