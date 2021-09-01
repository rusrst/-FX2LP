;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.3 #11868 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _sync_delay
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _ET2
	.globl _ES1
	.globl _EA
	.globl _PA1
	.globl _PA0
	.globl _EX6
	.globl _EX5
	.globl _EX4
	.globl _EI2C
	.globl _EUSB
	.globl _EXIF
	.globl _EIE
	.globl _ACC
	.globl _PSW
	.globl _IE
	.globl _TH1
	.globl _TL1
	.globl _TH0
	.globl _TL0
	.globl _TCON
	.globl _CKCON
	.globl _TMOD
	.globl _IOA
	.globl _OEA
	.globl _MPAGE
	.globl __XPAGE
	.globl _EP1INCFG
	.globl _EP1OUTCFG
	.globl _EPIRQ
	.globl _EPIE
	.globl _EP0BCL
	.globl _EP0BCH
	.globl _SUDPTRL
	.globl _SUDPTRH
	.globl _SUDPTRCTL
	.globl _EP0CS
	.globl _USBIRQ
	.globl _USBIE
	.globl _INTSETUP
	.globl _USBCS
	.globl _CPUCS
	.globl _flagAltUsb
	.globl _flagCfgUsb
	.globl _flagGetDesc
	.globl _flagStallEP0
	.globl _cntTmp
	.globl _pCode
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$_XPAGE$0_0$0 == 0x0092
__XPAGE	=	0x0092
G$MPAGE$0_0$0 == 0x0092
_MPAGE	=	0x0092
G$OEA$0_0$0 == 0x00b2
_OEA	=	0x00b2
G$IOA$0_0$0 == 0x0080
_IOA	=	0x0080
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$CKCON$0_0$0 == 0x008e
_CKCON	=	0x008e
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$EIE$0_0$0 == 0x00e8
_EIE	=	0x00e8
G$EXIF$0_0$0 == 0x0091
_EXIF	=	0x0091
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$EUSB$0_0$0 == 0x00e8
_EUSB	=	0x00e8
G$EI2C$0_0$0 == 0x00e9
_EI2C	=	0x00e9
G$EX4$0_0$0 == 0x00ea
_EX4	=	0x00ea
G$EX5$0_0$0 == 0x00eb
_EX5	=	0x00eb
G$EX6$0_0$0 == 0x00ec
_EX6	=	0x00ec
G$PA0$0_0$0 == 0x0080
_PA0	=	0x0080
G$PA1$0_0$0 == 0x0081
_PA1	=	0x0081
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$ES1$0_0$0 == 0x00ae
_ES1	=	0x00ae
G$ET2$0_0$0 == 0x00ad
_ET2	=	0x00ad
G$ES0$0_0$0 == 0x00ac
_ES0	=	0x00ac
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$pCode$0_0$0==.
_pCode::
	.ds 2
G$cntTmp$0_0$0==.
_cntTmp::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
Lmain.main$i$2_0$18==.
_main_i_131072_18:
	.ds 1
Lmain.main$j$4_0$20==.
_main_j_262144_20:
	.ds 1
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
G$flagStallEP0$0_0$0==.
_flagStallEP0::
	.ds 1
G$flagGetDesc$0_0$0==.
_flagGetDesc::
	.ds 1
G$flagCfgUsb$0_0$0==.
_flagCfgUsb::
	.ds 1
G$flagAltUsb$0_0$0==.
_flagAltUsb::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
G$CPUCS$0_0$0 == 0xe600
_CPUCS	=	0xe600
G$USBCS$0_0$0 == 0xe680
_USBCS	=	0xe680
G$INTSETUP$0_0$0 == 0xe668
_INTSETUP	=	0xe668
G$USBIE$0_0$0 == 0xe65c
_USBIE	=	0xe65c
G$USBIRQ$0_0$0 == 0xe65d
_USBIRQ	=	0xe65d
G$EP0CS$0_0$0 == 0xe6a0
_EP0CS	=	0xe6a0
G$SUDPTRCTL$0_0$0 == 0xe6b5
_SUDPTRCTL	=	0xe6b5
G$SUDPTRH$0_0$0 == 0xe6b3
_SUDPTRH	=	0xe6b3
G$SUDPTRL$0_0$0 == 0xe6b4
_SUDPTRL	=	0xe6b4
G$EP0BCH$0_0$0 == 0xe68a
_EP0BCH	=	0xe68a
G$EP0BCL$0_0$0 == 0xe68b
_EP0BCL	=	0xe68b
G$EPIE$0_0$0 == 0xe65e
_EPIE	=	0xe65e
G$EPIRQ$0_0$0 == 0xe65f
_EPIRQ	=	0xe65f
G$EP1OUTCFG$0_0$0 == 0xe610
_EP1OUTCFG	=	0xe610
G$EP1INCFG$0_0$0 == 0xe611
_EP1INCFG	=	0xe611
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_int0
	.ds	5
	ljmp	_tim0
	.ds	5
	ljmp	_int1
	.ds	5
	ljmp	_tim1
	.ds	5
	ljmp	_usart0
	.ds	5
	ljmp	_tim2
	.ds	5
	ljmp	_res
	.ds	5
	ljmp	_usart1
	.ds	5
	ljmp	_usb
	.ds	5
	ljmp	_i2c
	.ds	5
	ljmp	_int4
	.ds	5
	ljmp	_int5
	.ds	5
	ljmp	_int6
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'sync_delay'
;------------------------------------------------------------
	G$sync_delay$0$0 ==.
	C$main.c$21$0_0$15 ==.
;	main.c:21: void sync_delay (void) __naked
;	-----------------------------------------
;	 function sync_delay
;	-----------------------------------------
_sync_delay:
;	naked function: no prologue.
	C$main.c$35$1_0$15 ==.
;	main.c:35: __endasm;
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	ret
	C$main.c$36$1_0$15 ==.
;	main.c:36: }
;	naked function: no epilogue.
	C$main.c$36$1_0$15 ==.
	XG$sync_delay$0$0 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated with name '_main_i_131072_18'
;j                         Allocated with name '_main_j_262144_20'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$45$1_0$17 ==.
;	main.c:45: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$main.c$48$1_0$17 ==.
;	main.c:48: OEA = 0xFF; // PA1 input
	mov	_OEA,#0xff
	C$main.c$49$1_0$17 ==.
;	main.c:49: PA0 = 1;// UART TX
;	assignBit
	setb	_PA0
	C$main.c$51$1_0$17 ==.
;	main.c:51: PA0=1;
;	assignBit
	setb	_PA0
	C$main.c$52$1_0$17 ==.
;	main.c:52: PA1=1;
;	assignBit
	setb	_PA1
	C$main.c$55$1_0$17 ==.
;	main.c:55: EP0BCH = 0x00;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
	C$main.c$56$1_0$17 ==.
;	main.c:56: USBCS |= (1 << bDISCON);// отключение от линии USB
	mov	dptr,#_USBCS
	movx	a,@dptr
	orl	acc,#0x08
	movx	@dptr,a
	C$main.c$57$3_0$18 ==.
;	main.c:57: for (volatile char i = 0; i < 255; i++)
	mov	_main_i_131072_18,#0x00
00112$:
	mov	a,#0x100 - 0xff
	add	a,_main_i_131072_18
	jc	00102$
	C$main.c$59$5_0$20 ==.
;	main.c:59: for (volatile char j = 0; j < 255; j++)
	mov	_main_j_262144_20,#0x00
00109$:
	mov	a,#0x100 - 0xff
	add	a,_main_j_262144_20
	jc	00113$
	mov	a,_main_j_262144_20
	inc	a
	mov	_main_j_262144_20,a
	sjmp	00109$
00113$:
	C$main.c$57$2_0$18 ==.
;	main.c:57: for (volatile char i = 0; i < 255; i++)
	mov	a,_main_i_131072_18
	inc	a
	mov	_main_i_131072_18,a
	sjmp	00112$
00102$:
	C$main.c$65$1_0$17 ==.
;	main.c:65: INTSETUP = (1<<bAV2EN);// разрешение для модуля USB
	mov	dptr,#_INTSETUP
	mov	a,#0x08
	movx	@dptr,a
	C$main.c$66$1_0$17 ==.
;	main.c:66: USBIE = (1<<bSUDAV) ;
	mov	dptr,#_USBIE
	mov	a,#0x01
	movx	@dptr,a
	C$main.c$67$1_0$17 ==.
;	main.c:67: EUSB = 1; // разрешение общего прерывания для USB
;	assignBit
	setb	_EUSB
	C$main.c$68$1_0$17 ==.
;	main.c:68: USBCS = (1<<bRENUM);// перехват работы с USB
	mov	dptr,#_USBCS
	mov	a,#0x02
	movx	@dptr,a
	C$main.c$69$1_0$17 ==.
;	main.c:69: EA = 1;// разрешение прерываний
;	assignBit
	setb	_EA
	C$main.c$75$1_0$17 ==.
;	main.c:75: if (!(CPUCS & 0x08))
	mov	dptr,#_CPUCS
	movx	a,@dptr
	jb	acc.3,00104$
	C$main.c$76$1_0$17 ==.
;	main.c:76: (CPUCS |= 0x08); // проверяем частоту, если не 24, то устанавливаем 24
	mov	dptr,#_CPUCS
	movx	a,@dptr
	orl	acc,#0x08
	movx	@dptr,a
00104$:
	C$main.c$78$1_0$17 ==.
;	main.c:78: SUDPTRCTL = 0x00; // включаем систему автоматической передачи дескрипторов
	mov	dptr,#_SUDPTRCTL
	clr	a
	movx	@dptr,a
	C$main.c$82$1_0$17 ==.
;	main.c:82: while (1);
00106$:
	sjmp	00106$
	C$main.c$84$1_0$17 ==.
;	main.c:84: }
	C$main.c$84$1_0$17 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
