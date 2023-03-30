;/////////////////////////////////////////////////////////////////////////////////
;// Code Generator: BoostC Compiler - http://www.sourceboost.com
;// Version       : 8.01
;// License Type  : Pro License
;// Limitations   : PIC12,PIC16 max code size:Unlimited, max RAM banks:Unlimited
;/////////////////////////////////////////////////////////////////////////////////

	include "P12F675.inc"
; Heap block 0, size:13 (0x00000052 - 0x0000005E)
__HEAP_BLOCK0_BANK               EQU	0x00000000
__HEAP_BLOCK0_START_OFFSET       EQU	0x00000052
__HEAP_BLOCK0_END_OFFSET         EQU	0x0000005E
; Heap block 1, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK1_BANK               EQU	0x00000000
__HEAP_BLOCK1_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK1_END_OFFSET         EQU	0x00000000
; Heap block 2, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK2_BANK               EQU	0x00000000
__HEAP_BLOCK2_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK2_END_OFFSET         EQU	0x00000000
; Heap block 3, size:0 (0x00000000 - 0x00000000)
__HEAP_BLOCK3_BANK               EQU	0x00000000
__HEAP_BLOCK3_START_OFFSET       EQU	0x00000000
__HEAP_BLOCK3_END_OFFSET         EQU	0x00000000
gbl_status                       EQU	0x00000003 ; bytes:1
__mul_16s__0000F_arg_a           EQU	0x00000049 ; bytes:2
__mul_16s__0000F_arg_b           EQU	0x0000004B ; bytes:2
CompTempVarRet386                EQU	0x00000050 ; bytes:2
__mul_16s__0000F_1_i             EQU	0x0000004D ; bytes:1
__mul_16s__0000F_1_t             EQU	0x0000004E ; bytes:2
gbl_indf                         EQU	0x00000000 ; bytes:1
gbl_tmr0                         EQU	0x00000001 ; bytes:1
gbl_pcl                          EQU	0x00000002 ; bytes:1
gbl_fsr                          EQU	0x00000004 ; bytes:1
gbl_gpio                         EQU	0x00000005 ; bytes:1
gbl_pclath                       EQU	0x0000000A ; bytes:1
gbl_intcon                       EQU	0x0000000B ; bytes:1
gbl_pir1                         EQU	0x0000000C ; bytes:1
gbl_tmr1l                        EQU	0x0000000E ; bytes:1
gbl_tmr1h                        EQU	0x0000000F ; bytes:1
gbl_t1con                        EQU	0x00000010 ; bytes:1
gbl_cmcon                        EQU	0x00000019 ; bytes:1
gbl_adresh                       EQU	0x0000001E ; bytes:1
gbl_adcon0                       EQU	0x0000001F ; bytes:1
gbl_option_reg                   EQU	0x00000081 ; bytes:1
gbl_trisio                       EQU	0x00000085 ; bytes:1
gbl_pie1                         EQU	0x0000008C ; bytes:1
gbl_pcon                         EQU	0x0000008E ; bytes:1
gbl_osccal                       EQU	0x00000090 ; bytes:1
gbl_wpu                          EQU	0x00000095 ; bytes:1
gbl_ioc                          EQU	0x00000096 ; bytes:1
gbl_iocb                         EQU	0x00000096 ; bytes:1
gbl_vrcon                        EQU	0x00000099 ; bytes:1
gbl_eedata                       EQU	0x0000009A ; bytes:1
gbl_eeadr                        EQU	0x0000009B ; bytes:1
gbl_eecon1                       EQU	0x0000009C ; bytes:1
gbl_eecon2                       EQU	0x0000009D ; bytes:1
gbl_adresl                       EQU	0x0000009E ; bytes:1
gbl_ansel                        EQU	0x0000009F ; bytes:1
gbl_cTempH                       EQU	0x00000031 ; bytes:1
gbl_cTempL                       EQU	0x00000032 ; bytes:1
gbl_iDecimalPosition             EQU	0x00000033 ; bytes:1
gbl_oneWireIsPresent             EQU	0x00000034 ; bytes:1
gbl_oneWireResetStage            EQU	0x00000035 ; bytes:1
gbl_iTimer1Count                 EQU	0x00000036 ; bytes:1
gbl_cTask                        EQU	0x00000037 ; bytes:1
gbl_tm1637MaxDigits              EQU	0x00000038 ; bytes:1
gbl_tm1637DisplayNumtoSeg        EQU	0x00000020 ; bytes:10
gbl_tm1637Dot                    EQU	0x00000039 ; bytes:1
gbl_tm1637Brightness             EQU	0x0000003A ; bytes:1
gbl_tm1637ByteSetData            EQU	0x0000003B ; bytes:1
gbl_tm1637ByteSetAddr            EQU	0x0000003C ; bytes:1
gbl_tm1637ByteSetOn              EQU	0x0000003D ; bytes:1
gbl_tm1637Data                   EQU	0x0000002A ; bytes:4
oneWireBus_00015_1_isPresent     EQU	0x0000003E ; bytes:1
oneWireTxB_00016_arg_cData       EQU	0x00000040 ; bytes:1
oneWireTxB_00016_1_cTemp         EQU	0x00000041 ; bytes:1
oneWireTxB_00016_2_i             EQU	0x00000042 ; bytes:1
oneWireTxB_00017_arg_cData       EQU	0x0000003E ; bytes:1
oneWireTxB_00017_arg_cData2      EQU	0x0000003F ; bytes:1
CompTempVarRet548                EQU	0x0000003F ; bytes:1
oneWireRxB_00018_1_cDataIn       EQU	0x0000003E ; bytes:1
oneWireRxB_00018_2_i             EQU	0x0000003F ; bytes:1
tm1637Upda_00019_2_i             EQU	0x0000003E ; bytes:1
tm1637Byte_0001B_arg_bWrite      EQU	0x0000003F ; bytes:1
CompTempVarRet553                EQU	0x00000041 ; bytes:1
tm1637Byte_0001B_1_tm1637ack     EQU	0x00000040 ; bytes:1
tm1637Byte_0001B_2_i             EQU	0x00000041 ; bytes:1
CompTempVar554                   EQU	0x00000042 ; bytes:1
convertTem_0001D_1_iTemp         EQU	0x0000003E ; bytes:2
convertTem_0001D_1_isMinus       EQU	0x00000040 ; bytes:1
convertTem_0001D_1_iValue        EQU	0x00000041 ; bytes:2
CompTempVar561                   EQU	0x00000043 ; bytes:1
CompTempVar564                   EQU	0x00000044 ; bytes:1
convertTem_0001D_1_cDig3         EQU	0x00000045 ; bytes:1
convertTem_0001D_1_cDig2         EQU	0x00000046 ; bytes:1
convertTem_0001D_1_cDig1         EQU	0x00000047 ; bytes:1
convertTem_0001D_1_cDig0         EQU	0x00000048 ; bytes:1
CompTempVar573                   EQU	0x00000049 ; bytes:1
CompTempVar576                   EQU	0x00000049 ; bytes:1
delay_us_00000_arg_del           EQU	0x00000043 ; bytes:1
delay_10us_00000_arg_del         EQU	0x00000043 ; bytes:1
Int1Context                      EQU	0x0000005F ; bytes:1
Int1BContext                     EQU	0x0000002E ; bytes:3
	ORG 0x00000000
	GOTO	_startup
	ORG 0x00000004
	MOVWF Int1Context
	SWAPF STATUS, W
	BCF STATUS, RP0
	MOVWF Int1BContext
	SWAPF PCLATH, W
	MOVWF Int1BContext+D'1'
	SWAPF FSR, W
	MOVWF Int1BContext+D'2'
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	interrupt
	ORG 0x00000010
delay_10us_00000
; { delay_10us ; function begin
label1
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	DECFSZ delay_10us_00000_arg_del, F
	GOTO	label1
	RETURN
; } delay_10us function end

	ORG 0x0000001A
delay_us_00000
; { delay_us ; function begin
	MOVLW 0x03
	ADDWF delay_us_00000_arg_del, F
	RRF delay_us_00000_arg_del, F
	RRF delay_us_00000_arg_del, F
	MOVLW 0x7F
	ANDWF delay_us_00000_arg_del, F
label2
	NOP
	DECFSZ delay_us_00000_arg_del, F
	GOTO	label2
	RETURN
; } delay_us function end

	ORG 0x00000024
oneWireTxB_00016
; { oneWireTxByte ; function begin
	MOVLW 0x01
	MOVWF oneWireTxB_00016_1_cTemp
	CLRF oneWireTxB_00016_2_i
label3
	MOVLW 0x08
	SUBWF oneWireTxB_00016_2_i, W
	BTFSC STATUS,C
	RETURN
	BSF STATUS, RP0
	BCF gbl_trisio,2
	BCF STATUS, RP0
	BCF gbl_gpio,2
	MOVF oneWireTxB_00016_1_cTemp, W
	ANDWF oneWireTxB_00016_arg_cData, W
	BTFSC STATUS,Z
	GOTO	label4
	BSF STATUS, RP0
	BSF gbl_trisio,2
label4
	MOVLW 0x05
	BCF STATUS, RP0
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	BSF STATUS, RP0
	BSF gbl_trisio,2
	BCF STATUS,C
	BCF STATUS, RP0
	RLF oneWireTxB_00016_1_cTemp, F
	INCF oneWireTxB_00016_2_i, F
	GOTO	label3
; } oneWireTxByte function end

	ORG 0x00000040
tm1637Stop_0001C
; { tm1637StopCondition ; function begin
	BSF STATUS, RP0
	BCF gbl_trisio,4
	BCF STATUS, RP0
	BCF gbl_gpio,4
	MOVLW 0x64
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	BSF STATUS, RP0
	BSF gbl_trisio,5
	MOVLW 0x64
	BCF STATUS, RP0
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	BSF STATUS, RP0
	BSF gbl_trisio,4
	MOVLW 0x64
	BCF STATUS, RP0
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	RETURN
; } tm1637StopCondition function end

	ORG 0x00000054
tm1637Star_0001A
; { tm1637StartCondition ; function begin
	BSF STATUS, RP0
	BCF gbl_trisio,4
	BCF STATUS, RP0
	BCF gbl_gpio,4
	MOVLW 0x64
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	RETURN
; } tm1637StartCondition function end

	ORG 0x0000005C
tm1637Byte_0001B
; { tm1637ByteWrite ; function begin
	CLRF tm1637Byte_0001B_2_i
label5
	MOVLW 0x08
	SUBWF tm1637Byte_0001B_2_i, W
	BTFSC STATUS,C
	GOTO	label8
	BSF STATUS, RP0
	BCF gbl_trisio,5
	BCF STATUS, RP0
	BCF gbl_gpio,5
	MOVLW 0x64
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVLW 0x01
	ANDWF tm1637Byte_0001B_arg_bWrite, W
	MOVWF CompTempVar554
	MOVF CompTempVar554, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label6
	BSF STATUS, RP0
	BSF gbl_trisio,4
	GOTO	label7
label6
	BSF STATUS, RP0
	BCF gbl_trisio,4
	BCF STATUS, RP0
	BCF gbl_gpio,4
label7
	MOVLW 0x64
	BCF STATUS, RP0
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVF tm1637Byte_0001B_arg_bWrite, F
	BCF STATUS,C
	RRF tm1637Byte_0001B_arg_bWrite, F
	BSF STATUS, RP0
	BSF gbl_trisio,5
	MOVLW 0x64
	BCF STATUS, RP0
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	INCF tm1637Byte_0001B_2_i, F
	GOTO	label5
label8
	BSF STATUS, RP0
	BCF gbl_trisio,5
	BCF STATUS, RP0
	BCF gbl_gpio,5
	BSF STATUS, RP0
	BSF gbl_trisio,4
	BCF STATUS, RP0
	BCF gbl_gpio,4
	MOVLW 0x64
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	BSF STATUS, RP0
	BSF gbl_trisio,5
	MOVLW 0x64
	BCF STATUS, RP0
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	CLRF tm1637Byte_0001B_1_tm1637ack
	BTFSC gbl_gpio,4
	INCF tm1637Byte_0001B_1_tm1637ack, F
	MOVF tm1637Byte_0001B_1_tm1637ack, F
	BTFSS STATUS,Z
	GOTO	label9
	BSF STATUS, RP0
	BCF gbl_trisio,4
	BCF STATUS, RP0
	BCF gbl_gpio,4
label9
	MOVLW 0x64
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	BSF STATUS, RP0
	BCF gbl_trisio,5
	BCF STATUS, RP0
	BCF gbl_gpio,5
	MOVLW 0x64
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	MOVLW 0x01
	MOVWF CompTempVarRet553
	RETURN
; } tm1637ByteWrite function end

	ORG 0x000000AD
oneWireTxB_00017
; { oneWireTxBytes ; function begin
	MOVF oneWireTxB_00017_arg_cData, W
	MOVWF oneWireTxB_00016_arg_cData
	CALL oneWireTxB_00016
	MOVF oneWireTxB_00017_arg_cData2, W
	MOVWF oneWireTxB_00016_arg_cData
	CALL oneWireTxB_00016
	RETURN
; } oneWireTxBytes function end

	ORG 0x000000B4
oneWireRxB_00018
; { oneWireRxByte ; function begin
	BCF STATUS, RP0
	CLRF oneWireRxB_00018_1_cDataIn
	CLRF oneWireRxB_00018_2_i
label10
	MOVLW 0x08
	SUBWF oneWireRxB_00018_2_i, W
	BTFSC STATUS,C
	GOTO	label11
	BSF STATUS, RP0
	BCF gbl_trisio,2
	BCF STATUS, RP0
	BCF gbl_gpio,2
	BSF STATUS, RP0
	BSF gbl_trisio,2
	MOVLW 0x06
	BCF STATUS, RP0
	MOVWF delay_us_00000_arg_del
	CALL delay_us_00000
	BCF STATUS,C
	RRF oneWireRxB_00018_1_cDataIn, F
	BTFSC gbl_gpio,2
	BSF oneWireRxB_00018_1_cDataIn,7
	MOVLW 0x06
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	INCF oneWireRxB_00018_2_i, F
	GOTO	label10
label11
	MOVF oneWireRxB_00018_1_cDataIn, W
	MOVWF CompTempVarRet548
	RETURN
; } oneWireRxByte function end

	ORG 0x000000D1
__mul_16s__0000F
; { __mul_16s_16s__16 ; function begin
	CLRF __mul_16s__0000F_1_i
	CLRF CompTempVarRet386
	CLRF CompTempVarRet386+D'1'
	MOVF __mul_16s__0000F_arg_a, W
	MOVWF __mul_16s__0000F_1_t
	MOVF __mul_16s__0000F_arg_a+D'1', W
	MOVWF __mul_16s__0000F_1_t+D'1'
	BTFSS __mul_16s__0000F_arg_b+D'1',7
	GOTO	label12
	BSF __mul_16s__0000F_1_i,7
	COMF __mul_16s__0000F_arg_b, F
	COMF __mul_16s__0000F_arg_b+D'1', F
	INCF __mul_16s__0000F_arg_b, F
	BTFSC gbl_status,2
	INCF __mul_16s__0000F_arg_b+D'1', F
label12
	BTFSC __mul_16s__0000F_1_i,4
	GOTO	label14
	BTFSS __mul_16s__0000F_arg_b,0
	GOTO	label13
	MOVF __mul_16s__0000F_1_t, W
	ADDWF CompTempVarRet386, F
	MOVF __mul_16s__0000F_1_t+D'1', W
	BTFSC gbl_status,0
	INCFSZ __mul_16s__0000F_1_t+D'1', W
	ADDWF CompTempVarRet386+D'1', F
label13
	BCF gbl_status,0
	RRF __mul_16s__0000F_arg_b+D'1', F
	RRF __mul_16s__0000F_arg_b, F
	BCF gbl_status,0
	RLF __mul_16s__0000F_1_t, F
	RLF __mul_16s__0000F_1_t+D'1', F
	INCF __mul_16s__0000F_1_i, F
	GOTO	label12
label14
	BTFSS __mul_16s__0000F_1_i,7
	RETURN
	COMF CompTempVarRet386, F
	COMF CompTempVarRet386+D'1', F
	INCF CompTempVarRet386, F
	BTFSC gbl_status,2
	INCF CompTempVarRet386+D'1', F
	RETURN
; } __mul_16s_16s__16 function end

	ORG 0x000000FA
tm1637Upda_00019
; { tm1637UpdateDisplay ; function begin
	CALL tm1637Star_0001A
	MOVF gbl_tm1637ByteSetData, W
	MOVWF tm1637Byte_0001B_arg_bWrite
	CALL tm1637Byte_0001B
	CALL tm1637Stop_0001C
	CALL tm1637Star_0001A
	MOVF gbl_tm1637ByteSetAddr, W
	MOVWF tm1637Byte_0001B_arg_bWrite
	CALL tm1637Byte_0001B
	CLRF tm1637Upda_00019_2_i
label15
	MOVF gbl_tm1637MaxDigits, W
	SUBWF tm1637Upda_00019_2_i, W
	BTFSC STATUS,C
	GOTO	label16
	MOVLW LOW(gbl_tm1637Data+D'0')
	MOVWF FSR
	MOVF tm1637Upda_00019_2_i, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF tm1637Byte_0001B_arg_bWrite
	CALL tm1637Byte_0001B
	INCF tm1637Upda_00019_2_i, F
	GOTO	label15
label16
	CALL tm1637Stop_0001C
	CALL tm1637Star_0001A
	MOVF gbl_tm1637Brightness, W
	ADDWF gbl_tm1637ByteSetOn, W
	MOVWF tm1637Byte_0001B_arg_bWrite
	CALL tm1637Byte_0001B
	CALL tm1637Stop_0001C
	RETURN
; } tm1637UpdateDisplay function end

	ORG 0x00000119
startTemp_00000
; { startTemp ; function begin
	MOVLW 0xCC
	BCF STATUS, RP0
	MOVWF oneWireTxB_00017_arg_cData
	MOVLW 0x44
	MOVWF oneWireTxB_00017_arg_cData2
	CALL oneWireTxB_00017
	RETURN
; } startTemp function end

	ORG 0x00000120
readTemp_00000
; { readTemp ; function begin
	MOVLW 0xCC
	BCF STATUS, RP0
	MOVWF oneWireTxB_00017_arg_cData
	MOVLW 0xBE
	MOVWF oneWireTxB_00017_arg_cData2
	CALL oneWireTxB_00017
	CALL oneWireRxB_00018
	MOVF CompTempVarRet548, W
	MOVWF gbl_cTempL
	CALL oneWireRxB_00018
	MOVF CompTempVarRet548, W
	MOVWF gbl_cTempH
	RETURN
; } readTemp function end

	ORG 0x0000012D
oneWireBus_00015
; { oneWireBusReset ; function begin
	BSF STATUS, RP0
	BSF gbl_trisio,2
	BCF STATUS, RP0
	CLRF oneWireBus_00015_1_isPresent
	BCF gbl_gpio,2
	BSF STATUS, RP0
	BCF gbl_trisio,2
	MOVLW 0x32
	BCF STATUS, RP0
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	BSF STATUS, RP0
	BSF gbl_trisio,2
	MOVLW 0x07
	BCF STATUS, RP0
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	BTFSC gbl_gpio,2
	CLRF gbl_oneWireIsPresent
	MOVLW 0x32
	MOVWF delay_10us_00000_arg_del
	CALL delay_10us_00000
	RETURN
; } oneWireBusReset function end

	ORG 0x00000144
initialise_00000
; { initialise ; function begin
	BCF STATUS, RP0
	CLRF gbl_gpio
	MOVLW 0x34
	BSF STATUS, RP0
	MOVWF gbl_trisio
	CLRF gbl_ansel
	MOVLW 0x07
	BCF STATUS, RP0
	MOVWF gbl_cmcon
	BSF STATUS, RP0
	CLRF gbl_option_reg
	BSF gbl_option_reg,7
	BCF STATUS, RP0
	CLRF gbl_t1con
	BSF gbl_t1con,5
	BSF gbl_t1con,2
	BSF gbl_t1con,0
	BSF STATUS, RP0
	BSF gbl_pie1,0
	BCF STATUS, RP0
	BCF gbl_pir1,0
	CLRF gbl_cTask
	BSF gbl_intcon,7
	BSF gbl_intcon,6
	RETURN
; } initialise function end

	ORG 0x0000015D
convertTem_0001D
; { convertTemp ; function begin
	BCF STATUS, RP0
	CLRF convertTem_0001D_1_iTemp
	MOVF gbl_cTempH, W
	MOVWF convertTem_0001D_1_iTemp+D'1'
	MOVF gbl_cTempL, W
	IORWF convertTem_0001D_1_iTemp, F
	CLRF convertTem_0001D_1_isMinus
	BTFSC convertTem_0001D_1_iTemp+D'1',7
	INCF convertTem_0001D_1_isMinus, F
	MOVF convertTem_0001D_1_isMinus, F
	BTFSC STATUS,Z
	GOTO	label17
	COMF convertTem_0001D_1_iTemp, F
	COMF convertTem_0001D_1_iTemp+D'1', F
	INCF convertTem_0001D_1_iTemp, F
	BTFSC STATUS,Z
	INCF convertTem_0001D_1_iTemp+D'1', F
label17
	MOVLW 0x06
	MOVWF __mul_16s__0000F_arg_a
	CLRF __mul_16s__0000F_arg_a+D'1'
	MOVF convertTem_0001D_1_iTemp, W
	MOVWF __mul_16s__0000F_arg_b
	MOVF convertTem_0001D_1_iTemp+D'1', W
	MOVWF __mul_16s__0000F_arg_b+D'1'
	CALL __mul_16s__0000F
	MOVF CompTempVarRet386, W
	MOVWF convertTem_0001D_1_iValue
	MOVF CompTempVarRet386+D'1', W
	MOVWF CompTempVar564
	MOVF convertTem_0001D_1_iTemp, W
	MOVWF CompTempVar561
	MOVF convertTem_0001D_1_iTemp+D'1', W
	MOVWF convertTem_0001D_1_iValue+D'1'
	RLF convertTem_0001D_1_iTemp+D'1', W
	RRF convertTem_0001D_1_iValue+D'1', F
	RRF CompTempVar561, F
	RLF convertTem_0001D_1_iTemp+D'1', W
	RRF convertTem_0001D_1_iValue+D'1', F
	RRF CompTempVar561, F
	MOVF CompTempVar561, W
	ADDWF convertTem_0001D_1_iValue, F
	MOVF CompTempVar564, W
	BTFSC STATUS,C
	INCF convertTem_0001D_1_iValue+D'1', F
	ADDWF convertTem_0001D_1_iValue+D'1', F
	MOVLW 0x64
	SUBWF convertTem_0001D_1_iValue, F
	BTFSS STATUS,C
	DECF convertTem_0001D_1_iValue+D'1', F
	CLRF convertTem_0001D_1_cDig3
	CLRF convertTem_0001D_1_cDig2
	CLRF convertTem_0001D_1_cDig1
	CLRF convertTem_0001D_1_cDig0
label18
	MOVLW 0x03
	SUBWF convertTem_0001D_1_iValue+D'1', W
	BTFSS STATUS,Z
	GOTO	label19
	MOVLW 0xE8
	SUBWF convertTem_0001D_1_iValue, W
label19
	BTFSS STATUS,C
	GOTO	label20
	BTFSC convertTem_0001D_1_iValue+D'1',7
	GOTO	label20
	MOVLW 0xE8
	SUBWF convertTem_0001D_1_iValue, F
	MOVLW 0x03
	BTFSS STATUS,C
	MOVLW 0x04
	SUBWF convertTem_0001D_1_iValue+D'1', F
	INCF convertTem_0001D_1_cDig3, F
	GOTO	label18
label20
	MOVF convertTem_0001D_1_iValue+D'1', W
	XORLW 0x80
	MOVWF CompTempVar573
	MOVLW 0x80
	SUBWF CompTempVar573, W
	BTFSS STATUS,Z
	GOTO	label21
	MOVLW 0x64
	SUBWF convertTem_0001D_1_iValue, W
label21
	BTFSS STATUS,C
	GOTO	label22
	MOVLW 0x64
	SUBWF convertTem_0001D_1_iValue, F
	MOVF convertTem_0001D_1_iValue+D'1', F
	BTFSS STATUS,C
	DECF convertTem_0001D_1_iValue+D'1', F
	INCF convertTem_0001D_1_cDig2, F
	GOTO	label20
label22
	MOVF convertTem_0001D_1_iValue+D'1', W
	XORLW 0x80
	MOVWF CompTempVar576
	MOVLW 0x80
	SUBWF CompTempVar576, W
	BTFSS STATUS,Z
	GOTO	label23
	MOVLW 0x0A
	SUBWF convertTem_0001D_1_iValue, W
label23
	BTFSS STATUS,C
	GOTO	label24
	MOVLW 0x0A
	SUBWF convertTem_0001D_1_iValue, F
	MOVF convertTem_0001D_1_iValue+D'1', F
	BTFSS STATUS,C
	DECF convertTem_0001D_1_iValue+D'1', F
	INCF convertTem_0001D_1_cDig1, F
	GOTO	label22
label24
	MOVF convertTem_0001D_1_iValue, W
	MOVWF convertTem_0001D_1_cDig0
	MOVLW LOW(gbl_tm1637DisplayNumtoSeg+D'0')
	MOVWF FSR
	MOVF convertTem_0001D_1_cDig3, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF gbl_tm1637Data
	MOVLW LOW(gbl_tm1637DisplayNumtoSeg+D'0')
	MOVWF FSR
	MOVF convertTem_0001D_1_cDig2, W
	ADDWF FSR, F
	MOVF gbl_tm1637Dot, W
	ADDWF INDF, W
	MOVWF gbl_tm1637Data+D'1'
	MOVLW LOW(gbl_tm1637DisplayNumtoSeg+D'0')
	MOVWF FSR
	MOVF convertTem_0001D_1_cDig1, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF gbl_tm1637Data+D'2'
	MOVLW LOW(gbl_tm1637DisplayNumtoSeg+D'0')
	MOVWF FSR
	MOVF convertTem_0001D_1_cDig0, W
	ADDWF FSR, F
	MOVF INDF, W
	MOVWF gbl_tm1637Data+D'3'
	MOVF convertTem_0001D_1_cDig3, F
	BTFSC STATUS,Z
	CLRF gbl_tm1637Data
	MOVF convertTem_0001D_1_isMinus, F
	BTFSC STATUS,Z
	RETURN
	MOVLW 0x03
	SUBWF convertTem_0001D_1_iValue+D'1', W
	BTFSS STATUS,Z
	GOTO	label25
	MOVLW 0xE8
	SUBWF convertTem_0001D_1_iValue, W
label25
	BTFSS STATUS,C
	GOTO	label26
	BTFSC convertTem_0001D_1_iValue+D'1',7
	GOTO	label26
	MOVF gbl_tm1637Data, W
	MOVWF gbl_tm1637Data+D'1'
	MOVF gbl_tm1637Data+D'1', W
	MOVWF gbl_tm1637Data+D'2'
	MOVF gbl_tm1637Data+D'2', W
	MOVWF gbl_tm1637Data+D'3'
label26
	MOVLW 0x40
	MOVWF gbl_tm1637Data
	RETURN
; } convertTemp function end

	ORG 0x000001FC
main
; { main ; function begin
	CALL initialise_00000
	CALL convertTem_0001D
	CALL tm1637Upda_00019
label27
	MOVF gbl_cTask, W
	SUBLW 0x00
	BTFSC STATUS,C
	GOTO	label27
	BTFSS gbl_cTask,3
	GOTO	label28
	CALL oneWireBus_00015
	CALL startTemp_00000
	BCF gbl_cTask,3
label28
	BTFSS gbl_cTask,4
	GOTO	label27
	CALL oneWireBus_00015
	CALL readTemp_00000
	CALL convertTem_0001D
	CALL tm1637Upda_00019
	BCF gbl_cTask,4
	GOTO	label27
; } main function end

	ORG 0x00000210
_startup
	BCF STATUS, RP0
	CLRF gbl_cTempH
	CLRF gbl_cTempL
	MOVLW 0x02
	MOVWF gbl_iDecimalPosition
	CLRF gbl_oneWireIsPresent
	CLRF gbl_oneWireResetStage
	MOVLW 0x6E
	MOVWF gbl_iTimer1Count
	CLRF gbl_cTask
	MOVLW 0x04
	MOVWF gbl_tm1637MaxDigits
	MOVLW 0x3F
	MOVWF gbl_tm1637DisplayNumtoSeg
	MOVLW 0x06
	MOVWF gbl_tm1637DisplayNumtoSeg+D'1'
	MOVLW 0x5B
	MOVWF gbl_tm1637DisplayNumtoSeg+D'2'
	MOVLW 0x4F
	MOVWF gbl_tm1637DisplayNumtoSeg+D'3'
	MOVLW 0x66
	MOVWF gbl_tm1637DisplayNumtoSeg+D'4'
	MOVLW 0x6D
	MOVWF gbl_tm1637DisplayNumtoSeg+D'5'
	MOVLW 0x7D
	MOVWF gbl_tm1637DisplayNumtoSeg+D'6'
	MOVLW 0x07
	MOVWF gbl_tm1637DisplayNumtoSeg+D'7'
	MOVLW 0x7F
	MOVWF gbl_tm1637DisplayNumtoSeg+D'8'
	MOVLW 0x6F
	MOVWF gbl_tm1637DisplayNumtoSeg+D'9'
	MOVLW 0x80
	MOVWF gbl_tm1637Dot
	MOVLW 0x07
	MOVWF gbl_tm1637Brightness
	MOVLW 0x40
	MOVWF gbl_tm1637ByteSetData
	MOVLW 0xC0
	MOVWF gbl_tm1637ByteSetAddr
	MOVLW 0x88
	MOVWF gbl_tm1637ByteSetOn
	CLRF gbl_tm1637Data
	CLRF gbl_tm1637Data+D'1'
	CLRF gbl_tm1637Data+D'2'
	CLRF gbl_tm1637Data+D'3'
	BCF PCLATH,3
	BCF PCLATH,4
	GOTO	main
	ORG 0x00000241
interrupt
; { interrupt ; function begin
	BCF STATUS, RP0
	BTFSS gbl_pir1,0
	GOTO	label31
	BSF STATUS, RP0
	BTFSS gbl_pie1,0
	GOTO	label31
	BCF STATUS, RP0
	MOVF gbl_iTimer1Count, W
	XORLW 0x72
	BTFSC STATUS,Z
	BSF gbl_cTask,3
	MOVLW 0x75
	SUBWF gbl_iTimer1Count, W
	BTFSS STATUS,C
	GOTO	label30
	CLRF gbl_iTimer1Count
	BSF gbl_cTask,4
label30
	INCF gbl_iTimer1Count, F
	BCF gbl_pir1,0
label31
	BCF STATUS, RP0
	SWAPF Int1BContext+D'2', W
	MOVWF FSR
	SWAPF Int1BContext+D'1', W
	MOVWF PCLATH
	SWAPF Int1BContext, W
	MOVWF STATUS
	SWAPF Int1Context, F
	SWAPF Int1Context, W
	RETFIE
; } interrupt function end

	ORG 0x00002007
	DW 0x3FC4
	END
