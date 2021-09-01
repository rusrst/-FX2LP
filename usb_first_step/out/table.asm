;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.3 #11868 (MINGW32)
;--------------------------------------------------------
	.module table
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _string2
	.globl _string1
	.globl _string0
	.globl _configuration0
	.globl _descr
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
	.area CSEG    (CODE)
	.area TABLE   (CODE)
_descr:
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x40	; 64
	.db #0x12	; 18
	.db #0x31	; 49	'1'
	.db #0x73	; 115	's'
	.db #0x19	; 25
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x01	; 1
_configuration0:
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x30	; 48	'0'
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x81	; 129
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
_string0:
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x09	; 9
	.db #0x04	; 4
_string1:
	.db #0x0c	; 12
	.db #0x03	; 3
	.db #0x4d	; 77	'M'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x58	; 88	'X'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x4d	; 77	'M'
	.db #0x00	; 0
_string2:
	.db #0x1c	; 28
	.db #0x03	; 3
	.db #0x4d	; 77	'M'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x58	; 88	'X'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x4d	; 77	'M'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0x49	; 73	'I'
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x54	; 84	'T'
	.db #0x00	; 0
	.db #0x4f	; 79	'O'
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
