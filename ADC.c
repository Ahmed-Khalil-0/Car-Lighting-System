#include "ADC.h"
#include "GPIO.h"

tWord ADC_result = 0;

void ADC_Init(void){
    ADON = AD_OFF;
    SELECT_FREQU(FREQUENCY_8);
    ADFM = RESULT_FORMAT_RIGHT_JUST;
    PORT_CFG_CONTROL;

}
void ADC_Update(tByte channel){
    //check if ur time came.
    static tByte current_Time = 0;
    current_Time += OS_TICK;
    if(current_Time < ADC_PRIODE){
        return;
    }
    current_Time = 0;
    SELECT_CHANNEL(channel);
    ADON = AD_ON;
    ADC_GO;
    //wait until CONVERSION DONE.
    ADC_DONE;
    ADON = AD_OFF;
    ADC_result = D_RESULAT_ADC;
}
void ADC_Get(tWord* digital){
    *digital  = ADC_result;
}
