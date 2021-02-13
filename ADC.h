#ifndef __ADCON_H__
#define __ADCON_H__

#include <pic16f877a.h>
#include "OS.h"

#define ADC_PRIODE (5)
//SETTING Definitions.

    //APP USE.
        //define the AD DATA registers.
        #define AD_RESULT_HIGH_REGISTER (ADRESH)
        #define AD_RESULT_LOW_REGISTER  (ADRESL)
            //data alignment.
            #define RESULT_FORMAT_RIGHT_JUST (1)
            #define RESULT_FORMAT_LEFT_JUST  (0)
        //define the AD controls registers.
        #define AD_CONTROL_REGISTER_0 (ADCON0)
        #define AD_CONTROL_REGISTER_1 (ADCON1)
            //define the clock rate.
            #define FREQUENCY_2    (0)
            #define FREQUENCY_8    (1)
            #define FREQUENCY_32   (2)
            #define FREQUENCY_RC_1 (3)
            #define FREQUENCY_4    (4)
            #define FREQUENCY_16   (5)
            #define FREQUENCY_64   (6)
            #define FREQUENCY_RC_2 (7)
            #define SELECT_FREQU(clock) (ADCS2 = ((clock) & 0x4 ) >> 2);\
                                (ADCS1 = ((clock) & 0x2 ) >> 1);\
                                (ADCS0 = (clock) & 0x1)


            //define the flags for which A & D.

        //USE CASE.

            //define  channels.
            #define CHANNEL_INPUT_0      (0)
            #define CHANNEL_INPUT_1      (1)
            #define CHANNEL_INPUT_2      (2)
            #define CHANNEL_INPUT_3      (3)
            #define CHANNEL_INPUT_4      (4)
            #define CHANNEL_INPUT_5      (5)
            #define CHANNEL_INPUT_6      (6)
            #define CHANNEL_INPUT_7      (7)
            #define SELECT_CHANNEL(channel)  (CHS2 = ((channel & 0x4) >> 2));\
                                        (CHS1 = ((channel & 0x2) >> 1));\
                                        (CHS0 = (channel & 0x1))
            //.
            #define AD_ON                (1)
            #define AD_OFF               (0)

            //define(checking if it's done).
            #define ADC_GO         (GO = 1)
            #define ADC_DONE       while(GO == 1)

            #define PORT_CFG_CONTROL {\
                PCFG0 =0 ;\
                PCFG1 =0 ;\
                PCFG2 =0 ;\
                PCFG3 =0;\
            }

            #define D_RESULAT_ADC   ((tWord)(AD_RESULT_HIGH_REGISTER << 8)|AD_RESULT_LOW_REGISTER)

void ADC_Init(void);
void ADC_Update(tByte channel);
void ADC_Get(tWord*);



#endif // __ADCON_H__
