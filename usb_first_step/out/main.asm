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
	.globl _flagGetDesc
	.globl _flagStallEP0
	.globl _cntTmp
	.globl _pCode
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
__XPAGE	=	0x0092
_MPAGE	=	0x0092
_OEA	=	0x00b2
_IOA	=	0x0080
_TMOD	=	0x0089
_CKCON	=	0x008e
_TCON	=	0x0088
_TL0	=	0x008a
_TH0	=	0x008c
_TL1	=	0x008b
_TH1	=	0x008d
_IE	=	0x00a8
_PSW	=	0x00d0
_ACC	=	0x00e0
_EIE	=	0x00e8
_EXIF	=	0x0091
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_EUSB	=	0x00e8
_EI2C	=	0x00e9
_EX4	=	0x00ea
_EX5	=	0x00eb
_EX6	=	0x00ec
_PA0	=	0x0080
_PA1	=	0x0081
_EA	=	0x00af
_ES1	=	0x00ae
_ET2	=	0x00ad
_ES0	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
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
_pCode::
	.ds 2
_cntTmp::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_main_i_131072_18:
	.ds 1
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
_flagStallEP0::
	.ds 1
_flagGetDesc::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_CPUCS	=	0xe600
_USBCS	=	0xe680
_INTSETUP	=	0xe668
_USBIE	=	0xe65c
_USBIRQ	=	0xe65d
_EP0CS	=	0xe6a0
_SUDPTRCTL	=	0xe6b5
_SUDPTRH	=	0xe6b3
_SUDPTRL	=	0xe6b4
_EP0BCH	=	0xe68a
_EP0BCL	=	0xe68b
_EPIE	=	0xe65e
_EPIRQ	=	0xe65f
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:21: void sync_delay (void) __naked
;	-----------------------------------------
;	 function sync_delay
;	-----------------------------------------
_sync_delay:
;	naked function: no prologue.
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:35: __endasm;
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:36: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated with name '_main_i_131072_18'
;j                         Allocated with name '_main_j_262144_20'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:43: void main(void)
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:46: OEA = 0xFF; // PA1 input
	mov	_OEA,#0xff
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:47: PA0 = 1;// UART TX
;	assignBit
	setb	_PA0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:49: PA0=1;
;	assignBit
	setb	_PA0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:50: PA1=1;
;	assignBit
	setb	_PA1
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:53: EP0BCH = 0x00;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:54: USBCS |= (1 << bDISCON);// отключение от линии USB
	mov	dptr,#_USBCS
	movx	a,@dptr
	orl	acc,#0x08
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:55: for (volatile char i = 0; i < 255; i++)
	mov	_main_i_131072_18,#0x00
00112$:
	mov	a,#0x100 - 0xff
	add	a,_main_i_131072_18
	jc	00102$
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:57: for (volatile char j = 0; j < 255; j++)
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:55: for (volatile char i = 0; i < 255; i++)
	mov	a,_main_i_131072_18
	inc	a
	mov	_main_i_131072_18,a
	sjmp	00112$
00102$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:63: INTSETUP = (1<<bAV2EN);// разрешение для модуля USB
	mov	dptr,#_INTSETUP
	mov	a,#0x08
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:64: USBIE = (1<<bSUDAV) ;
	mov	dptr,#_USBIE
	mov	a,#0x01
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:65: EUSB = 1; // разрешение общего прерывания для USB
;	assignBit
	setb	_EUSB
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:66: USBCS = (1<<bRENUM);// перехват работы с USB
	mov	dptr,#_USBCS
	mov	a,#0x02
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:67: EA = 1;// разрешение прерываний
;	assignBit
	setb	_EA
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:73: if (!(CPUCS & 0x08))
	mov	dptr,#_CPUCS
	movx	a,@dptr
	jb	acc.3,00104$
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:74: (CPUCS |= 0x08); // проверяем частоту, если не 24, то устанавливаем 24
	mov	dptr,#_CPUCS
	movx	a,@dptr
	orl	acc,#0x08
	movx	@dptr,a
00104$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:76: SUDPTRCTL = 0x00; // включаем систему автоматической передачи дескрипторов
	mov	dptr,#_SUDPTRCTL
	clr	a
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:80: while (1);
00106$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:82: }
	sjmp	00106$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
