pcode dump


	New pBlock

GSINIT  (CODE), dbName =D
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _welcome_Light_Update_current_Time_1_11, size = 1
;; 	line = 6937 result AOP_DIR=_welcome_Light_Update_current_Time_1_11, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _welcome_Light_Update_current_Time_1_11   offset=0
	.line	22; "WelcomeLight.c"	static tByte current_Time = 0;
	CLRF	_welcome_Light_Update_current_Time_1_11
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _welcome_Light_Update_buffer_Pointer_1_11, size = 1
;; 	line = 6937 result AOP_DIR=_welcome_Light_Update_buffer_Pointer_1_11, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _welcome_Light_Update_buffer_Pointer_1_11   offset=0
	.line	23; "WelcomeLight.c"	static tByte buffer_Pointer = 0;
	CLRF	_welcome_Light_Update_buffer_Pointer_1_11
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _welcome_Light_Update_num_Of_Scanning_1_11, size = 1
;; 	line = 6937 result AOP_DIR=_welcome_Light_Update_num_Of_Scanning_1_11, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7035:genAssign
;;	1009
;;	1028  _welcome_Light_Update_num_Of_Scanning_1_11   offset=0
	.line	24; "WelcomeLight.c"	static tByte num_Of_Scanning = 0;
	CLRF	_welcome_Light_Update_num_Of_Scanning_1_11
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=8previous max_key=5 
_turn_On_Led	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genReceive *{*
;; ***	genReceive  7359
;;	694 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1907:assignResultValue *{*
;; ***	assignResultValue  1909
;; 	line = 1911 result -=-, size=0, left AOP_REG=r0x104E, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1393:movwf
;;	1109 rIdx = r0x104E 
	.line	64; "WelcomeLight.c"	static void turn_On_Led(tByte led_Num){
	MOVWF	r0x1004
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _PORTC, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104F, size=1, left -=-, size=0, right AOP_DIR=_PORTC, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _PORTC   offset=0
	.line	65; "WelcomeLight.c"	GPIO_WritePortPin(GPIO_PORTC_DATA, GPIO_PIN_0, ((led_Num&1)>>0));
	MOVF	_PORTC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104F 
	MOVWF	r0x1005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x104F, size=1, left AOP_REG=r0x104F, size=1, right AOP_LIT=0xfe, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x1005,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1050, size=1, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x01, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1109 rIdx = r0x104E 
	ANDWF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1050 
	MOVWF	r0x1006
	MOVWF	r0x1007
	MOVWF	r0x1006
	MOVWF	r0x1007
	IORWF	r0x1005,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4481:genOr
;;	1009
;;	1028  _PORTC   offset=0
	MOVWF	_PORTC
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _PORTC, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104F, size=1, left -=-, size=0, right AOP_DIR=_PORTC, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _PORTC   offset=0
	.line	66; "WelcomeLight.c"	GPIO_WritePortPin(GPIO_PORTC_DATA, GPIO_PIN_1, ((led_Num&2)>>1));
	MOVF	_PORTC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104F 
	MOVWF	r0x1005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x104F, size=1, left AOP_REG=r0x104F, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x1005,1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1050, size=1, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x02, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	MOVLW	0x02
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1109 rIdx = r0x104E 
	ANDWF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1109 rIdx = r0x1050 
	MOVWF	r0x1006
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5297:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1050 
	RRF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5298:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1051 
	MOVWF	r0x1007
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5183:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5192:shiftLeft_Left2ResultLit
;;	1109 rIdx = r0x1051 
	RLF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5193:shiftLeft_Left2ResultLit
;;	1109 rIdx = r0x1050 
	MOVWF	r0x1006
	MOVWF	r0x1007
	IORWF	r0x1005,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4481:genOr
;;	1009
;;	1028  _PORTC   offset=0
	MOVWF	_PORTC
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _PORTC, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104F, size=1, left -=-, size=0, right AOP_DIR=_PORTC, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _PORTC   offset=0
	.line	67; "WelcomeLight.c"	GPIO_WritePortPin(GPIO_PORTC_DATA, GPIO_PIN_2, ((led_Num&4)>>2));
	MOVF	_PORTC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104F 
	MOVWF	r0x1005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x104F, size=1, left AOP_REG=r0x104F, size=1, right AOP_LIT=0xfb, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x1005,2
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x104E, size=1, left AOP_REG=r0x104E, size=1, right AOP_LIT=0x04, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4128:genAnd
	MOVLW	0x04
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4130:genAnd
;;	1109 rIdx = r0x104E 
	ANDWF	r0x1004,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=0, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5297:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x104E 
	RRF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5298:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1050 
	MOVWF	r0x1006
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;shiftRight_Left2ResultLit:5273: shCount=1, size=1, sign=0, same=1, offr=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5283:shiftRight_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5293:shiftRight_Left2ResultLit
;;	1109 rIdx = r0x1050 
	RRF	r0x1006,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5418:genGenericShift *{*
;; ***	genGenericShift  5421
;;	694 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5183:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5192:shiftLeft_Left2ResultLit
;;	1109 rIdx = r0x1050 
	RLF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5193:shiftLeft_Left2ResultLit
;;	1109 rIdx = r0x104E 
	MOVWF	r0x1004
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5183:shiftLeft_Left2ResultLit
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5188:shiftLeft_Left2ResultLit
;;	1109 rIdx = r0x104E 
	RLF	r0x1004,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1050, size=1, left -=-, size=0, right AOP_REG=r0x104E, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1109 rIdx = r0x104E 
	MOVF	r0x1004,W
	MOVWF	r0x1006
	IORWF	r0x1005,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4481:genOr
;;	1009
;;	1028  _PORTC   offset=0
	MOVWF	_PORTC
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _turn_On_Led

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=4previous max_key=0 
_welcome_Light_Update	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;; ***	aopForSym 315
;;	327 sym->rname = _welcome_Light_Update_current_Time_1_11, size = 1
;;	575
;; 	line = 618 result AOP_DIR=_welcome_Light_Update_current_Time_1_11, size=1, left AOP_DIR=_welcome_Light_Update_current_Time_1_11, size=1, right AOP_LIT=0x05, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  156
;;	adding lit to something. size 1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:233:genAddLit2byte *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:245:genAddLit2byte
	.line	25; "WelcomeLight.c"	current_Time += OS_TICK;//not sure
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:246:genAddLit2byte
;;	1009
;;	1028  _welcome_Light_Update_current_Time_1_11   offset=0
	ADDWF	_welcome_Light_Update_current_Time_1_11,F
;; ***	addSign  861
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:862:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3583:genCmpLt *{*
;; ***	genCmpLt  3584
;; ***	aopForSym 315
;;	327 sym->rname = _welcome_Light_Update_current_Time_1_11, size = 1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3294:genCmp *{*
;;unsigned compare: left < lit(0xA=10), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3265:pic14_mov2w_regOrLit
	.line	26; "WelcomeLight.c"	if(current_Time < WEL_LIGHT_PRIODE){
	MOVLW	0x0a
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3432:genCmp
;;	1009
;;	1028  _welcome_Light_Update_current_Time_1_11   offset=0
	.line	27; "WelcomeLight.c"	return;
	SUBWF	_welcome_Light_Update_current_Time_1_11,W
	.line	29; "WelcomeLight.c"	current_Time = 0;
	BTFSS	STATUS,0
	GOTO	_00113_DS_
	CLRF	_welcome_Light_Update_current_Time_1_11
	.line	34; "WelcomeLight.c"	turn_On_Led(buffer_Pointer);
	MOVF	_welcome_Light_Update_buffer_Pointer_1_11,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2175:genCall
	CALL	_turn_On_Led
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1845:unsaveRegisters *{*
;; ***	unsaveRegisters  1847
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3619:genCmpEq *{*
;; ***	genCmpEq  3620
;; ifx is non-null
;; ***	aopForSym 315
;;	327 sym->rname = _welcome_Light_Update_num_Of_Scanning_1_11, size = 1
;; 	line = 3631 result AOP_CRY=0x00, size=0, left AOP_LIT=0x18, size=1, right AOP_DIR=_welcome_Light_Update_num_Of_Scanning_1_11, size=1
;; ***	mov2w  1381  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1386:mov2w
;;	1009
;;	1028  _welcome_Light_Update_num_Of_Scanning_1_11   offset=0
	.line	36; "WelcomeLight.c"	if(NUMBEROFREPEATION*(WEL_LEDS) == num_Of_Scanning){
	MOVF	_welcome_Light_Update_num_Of_Scanning_1_11,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3685:genCmpEq
	XORLW	0x18
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3687:genCmpEq
	BTFSS	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3690:genCmpEq
;; ***	popGetLabel  key=4, label offset 8
	GOTO	_00112_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x104D, size=1, left -=-, size=0, right AOP_DIR=_PORTB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _PORTB   offset=0
	.line	37; "WelcomeLight.c"	GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_5, LED_OFF);
	MOVF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x104D 
	MOVWF	r0x1008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;; 	line = 3955 result AOP_DIR=_PORTB, size=1, left AOP_REG=r0x104D, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	MOVLW	0xdf
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1109 rIdx = r0x104D 
	ANDWF	r0x1008,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1009
;;	1028  _PORTB   offset=0
	MOVWF	_PORTB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:6927:genAssign *{*
;; ***	genAssign  6928
;; ***	aopForSym 315
;;	327 sym->rname = _lock, size = 1
;; 	line = 6937 result AOP_DIR=_lock, size=1, left -=-, size=0, right AOP_LIT=0x01, size=1
;; ***	genAssign  7023
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7030:genAssign
	.line	38; "WelcomeLight.c"	lock = LOCK;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7032:genAssign
;;	1009
;;	1028  _lock   offset=0
	MOVWF	_lock
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;; ***	aopForSym 315
;;	327 sym->rname = _welcome_Light_Update_num_Of_Scanning_1_11, size = 1
;; 	line = 618 result AOP_DIR=_welcome_Light_Update_num_Of_Scanning_1_11, size=1, left AOP_DIR=_welcome_Light_Update_num_Of_Scanning_1_11, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1009
;;	1028  _welcome_Light_Update_num_Of_Scanning_1_11   offset=0
_00112_DS_
	.line	41; "WelcomeLight.c"	num_Of_Scanning++;
	INCF	_welcome_Light_Update_num_Of_Scanning_1_11,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;; ***	genPlus  611
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:612:genPlus *{*
;; ***	aopForSym 315
;;	327 sym->rname = _welcome_Light_Update_buffer_Pointer_1_11, size = 1
;; 	line = 618 result AOP_DIR=_welcome_Light_Update_buffer_Pointer_1_11, size=1, left AOP_DIR=_welcome_Light_Update_buffer_Pointer_1_11, size=1, right AOP_LIT=0x01, size=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  156
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:168:genPlusIncr
;;	1009
;;	1028  _welcome_Light_Update_buffer_Pointer_1_11   offset=0
	.line	42; "WelcomeLight.c"	buffer_Pointer++;
	INCF	_welcome_Light_Update_buffer_Pointer_1_11,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
_00113_DS_
	RETURN	
; exit point of _welcome_Light_Update
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2340:genFunction *{*
;; ***	genFunction  2342 curr label offset=0previous max_key=0 
_welcome_Light_Init	;Function start
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISC, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_TRISC, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISC   offset=0
	.line	13; "WelcomeLight.c"	GPIO_InitPortPin(GPIO_PORTC_CONTROL, GPIO_PIN_0, GPIO_OUT);
	MOVF	_TRISC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x1048 
	MOVWF	r0x1009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISC, size = 1
;; 	line = 3955 result AOP_DIR=_TRISC, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0xfe, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	MOVLW	0xfe
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1109 rIdx = r0x1048 
	ANDWF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1009
;;	1028  _TRISC   offset=0
	MOVWF	_TRISC
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISC, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_TRISC, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISC   offset=0
	.line	14; "WelcomeLight.c"	GPIO_InitPortPin(GPIO_PORTC_CONTROL, GPIO_PIN_1, GPIO_OUT);
	MOVF	_TRISC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x1048 
	MOVWF	r0x1009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISC, size = 1
;; 	line = 3955 result AOP_DIR=_TRISC, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0xfd, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	MOVLW	0xfd
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1109 rIdx = r0x1048 
	ANDWF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1009
;;	1028  _TRISC   offset=0
	MOVWF	_TRISC
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISC, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_TRISC, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISC   offset=0
	.line	15; "WelcomeLight.c"	GPIO_InitPortPin(GPIO_PORTC_CONTROL, GPIO_PIN_2, GPIO_OUT);
	MOVF	_TRISC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x1048 
	MOVWF	r0x1009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISC, size = 1
;; 	line = 3955 result AOP_DIR=_TRISC, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0xfb, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	MOVLW	0xfb
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1109 rIdx = r0x1048 
	ANDWF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1009
;;	1028  _TRISC   offset=0
	MOVWF	_TRISC
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _TRISB   offset=0
	.line	16; "WelcomeLight.c"	GPIO_InitPortPin(GPIO_PORTB_CONTROL, GPIO_PIN_5, GPIO_OUT);
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x1048 
	MOVWF	r0x1009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _TRISB, size = 1
;; 	line = 3955 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4190:genAnd
	MOVLW	0xdf
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4191:genAnd
;;	1109 rIdx = r0x1048 
	ANDWF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4192:genAnd
;;	1009
;;	1028  _TRISB   offset=0
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7120:genCast *{*
;; ***	genCast  7121
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;;	694 register type nRegs=1
;; 	line = 7129 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_DIR=_PORTB, size=1
;; ***	genCast  7253
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7277:genCast
;;	1009
;;	1028  _PORTB   offset=0
	.line	17; "WelcomeLight.c"	GPIO_WritePortPin(GPIO_PORTB_DATA, GPIO_PIN_5, LED_ON);
	MOVF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7278:genCast
;;	1109 rIdx = r0x1048 
	MOVWF	r0x1009
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3919:genAnd *{*
;; ***	genAnd  3920
;;	694 register type nRegs=1
;;	694 register type nRegs=1
;; 	line = 3955 result AOP_REG=r0x1048, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0xdf, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4122:genAnd
	BCF	r0x1009,5
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4220:genOr *{*
;; ***	genOr  4221
;;	694 register type nRegs=1
;; ***	aopForSym 315
;;	327 sym->rname = _PORTB, size = 1
;; 	line = 4227 result AOP_DIR=_PORTB, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x20, size=1
;; 	line = 4253 result AOP_DIR=_PORTB, size=1, left AOP_REG=r0x1048, size=1, right AOP_LIT=0x20, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4470:genOr
	MOVLW	0x20
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4471:genOr
;;	1109 rIdx = r0x1048 
	IORWF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4472:genOr
;;	1009
;;	1028  _PORTB   offset=0
	MOVWF	_PORTB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2760:genLabel *{*
;; ***	genLabel  2763
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2316:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2528:genEndFunction *{*
;; ***	genEndFunction  2530
	RETURN	
; exit point of _welcome_Light_Init
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7426:genpic14Code *{*
