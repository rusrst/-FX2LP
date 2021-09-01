;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.3 #11868 (MINGW32)
;--------------------------------------------------------
	.module interrupts
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _synch_frame
	.globl _set_interface
	.globl _get_interface
	.globl _set_configurated
	.globl _get_configurated
	.globl _set_descriptor
	.globl _get_descriptor
	.globl _set_adr
	.globl _set_feature
	.globl _reserve
	.globl _clear_feature
	.globl _get_status
	.globl _validEP
	.globl _int6
	.globl _int5
	.globl _int4
	.globl _i2c
	.globl _usb
	.globl _usart1
	.globl _res
	.globl _tim2
	.globl _usart0
	.globl _tim1
	.globl _int1
	.globl _tim0
	.globl _int0
	.globl _vectors
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
	.globl _std_func
	.globl _ptr_setupdat
	.globl _ptr_descriptor
	.globl _ptr_dat
	.globl _SUDAV
	.globl _SOF
	.globl _SUTOC
	.globl _SUSPEND
	.globl _USB_RESET
	.globl _HISPEED
	.globl _EP0ACK
	.globl __reserved_
	.globl _EP0IN
	.globl _EP0OUT
	.globl _EP1IN
	.globl _EP1OUT
	.globl _EP2
	.globl _EP4
	.globl _EP6
	.globl _EP8
	.globl _IBN
	.globl __reserved2_
	.globl _EP0PING
	.globl _EP1PING
	.globl _EP2PING
	.globl _EP4PING
	.globl _EP6PING
	.globl _EP8PING
	.globl _ERRLIMIT
	.globl __reserved3_
	.globl __reserved4_
	.globl __reserved5_
	.globl _EP2ISOERR
	.globl _EP4ISOERR
	.globl _EP6ISOERR
	.globl _EP8ISOERR
	.globl _send_byte_uart_9600
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
G$ptr_dat$0_0$0==.
_ptr_dat::
	.ds 2
G$ptr_descriptor$0_0$0==.
_ptr_descriptor::
	.ds 2
G$ptr_setupdat$0_0$0==.
_ptr_setupdat::
	.ds 2
G$std_func$0_0$0==.
_std_func::
	.ds 26
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	C$interrupts.c$53$1_0$227 ==.
;	interrupts.c:53: __xdata unsigned char *ptr_dat = (__xdata unsigned char *) xdata_temp;// указатель набуфер
	mov	_ptr_dat,#0x00
	mov	(_ptr_dat + 1),#0xe1
	C$interrupts.c$240$1_0$227 ==.
;	interrupts.c:240: void (*std_func[13]) (void) = {get_status, clear_feature, reserve, set_feature, reserve, set_adr, get_descriptor,
	mov	(_std_func + 0),#_get_status
	mov	(_std_func + 1),#(_get_status >> 8)
	mov	((_std_func + 0x0002) + 0),#_clear_feature
	mov	((_std_func + 0x0002) + 1),#(_clear_feature >> 8)
	mov	((_std_func + 0x0004) + 0),#_reserve
	mov	((_std_func + 0x0004) + 1),#(_reserve >> 8)
	mov	((_std_func + 0x0006) + 0),#_set_feature
	mov	((_std_func + 0x0006) + 1),#(_set_feature >> 8)
	mov	((_std_func + 0x0008) + 0),#_reserve
	mov	((_std_func + 0x0008) + 1),#(_reserve >> 8)
	mov	((_std_func + 0x000a) + 0),#_set_adr
	mov	((_std_func + 0x000a) + 1),#(_set_adr >> 8)
	mov	((_std_func + 0x000c) + 0),#_get_descriptor
	mov	((_std_func + 0x000c) + 1),#(_get_descriptor >> 8)
	mov	((_std_func + 0x000e) + 0),#_set_descriptor
	mov	((_std_func + 0x000e) + 1),#(_set_descriptor >> 8)
	mov	((_std_func + 0x0010) + 0),#_get_configurated
	mov	((_std_func + 0x0010) + 1),#(_get_configurated >> 8)
	mov	((_std_func + 0x0012) + 0),#_set_configurated
	mov	((_std_func + 0x0012) + 1),#(_set_configurated >> 8)
	mov	((_std_func + 0x0014) + 0),#_get_interface
	mov	((_std_func + 0x0014) + 1),#(_get_interface >> 8)
	mov	((_std_func + 0x0016) + 0),#_set_interface
	mov	((_std_func + 0x0016) + 1),#(_set_interface >> 8)
	mov	((_std_func + 0x0018) + 0),#_synch_frame
	mov	((_std_func + 0x0018) + 1),#(_synch_frame >> 8)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area USB_INTERRUPTS(CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'vectors'
;------------------------------------------------------------
	G$vectors$0$0 ==.
	C$interrupts.c$71$0_0$36 ==.
;	interrupts.c:71: volatile void vectors (void) __naked
;	-----------------------------------------
;	 function vectors
;	-----------------------------------------
_vectors:
;	naked function: no prologue.
	C$interrupts.c$82$1_0$36 ==.
;	interrupts.c:82: __endasm;
	ljmp	_SUDAV
	nop
	ljmp	_SOF
	nop
	ljmp	_SUTOC
	nop
	C$interrupts.c$83$1_0$36 ==.
;	interrupts.c:83: }
;	naked function: no epilogue.
	C$interrupts.c$83$1_0$36 ==.
	XG$vectors$0$0 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'int0'
;------------------------------------------------------------
	G$int0$0$0 ==.
	C$interrupts.c$89$1_0$39 ==.
;	interrupts.c:89: void int0 (void) __interrupt (0) {}
;	-----------------------------------------
;	 function int0
;	-----------------------------------------
_int0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$interrupts.c$89$1_0$39 ==.
	XG$int0$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'tim0'
;------------------------------------------------------------
	G$tim0$0$0 ==.
	C$interrupts.c$90$1_0$42 ==.
;	interrupts.c:90: void tim0 (void) __interrupt (1) {}
;	-----------------------------------------
;	 function tim0
;	-----------------------------------------
_tim0:
	C$interrupts.c$90$1_0$42 ==.
	XG$tim0$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'int1'
;------------------------------------------------------------
	G$int1$0$0 ==.
	C$interrupts.c$91$1_0$45 ==.
;	interrupts.c:91: void int1 (void) __interrupt (2) {}
;	-----------------------------------------
;	 function int1
;	-----------------------------------------
_int1:
	C$interrupts.c$91$1_0$45 ==.
	XG$int1$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'tim1'
;------------------------------------------------------------
	G$tim1$0$0 ==.
	C$interrupts.c$92$1_0$48 ==.
;	interrupts.c:92: void tim1 (void) __interrupt (3) {}
;	-----------------------------------------
;	 function tim1
;	-----------------------------------------
_tim1:
	C$interrupts.c$92$1_0$48 ==.
	XG$tim1$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'usart0'
;------------------------------------------------------------
	G$usart0$0$0 ==.
	C$interrupts.c$93$1_0$51 ==.
;	interrupts.c:93: void usart0 (void) __interrupt (4) {}
;	-----------------------------------------
;	 function usart0
;	-----------------------------------------
_usart0:
	C$interrupts.c$93$1_0$51 ==.
	XG$usart0$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'tim2'
;------------------------------------------------------------
	G$tim2$0$0 ==.
	C$interrupts.c$94$1_0$54 ==.
;	interrupts.c:94: void tim2 (void) __interrupt (5) {}
;	-----------------------------------------
;	 function tim2
;	-----------------------------------------
_tim2:
	C$interrupts.c$94$1_0$54 ==.
	XG$tim2$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'res'
;------------------------------------------------------------
	G$res$0$0 ==.
	C$interrupts.c$95$1_0$57 ==.
;	interrupts.c:95: void res (void) __interrupt (6) {}
;	-----------------------------------------
;	 function res
;	-----------------------------------------
_res:
	C$interrupts.c$95$1_0$57 ==.
	XG$res$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'usart1'
;------------------------------------------------------------
	G$usart1$0$0 ==.
	C$interrupts.c$96$1_0$60 ==.
;	interrupts.c:96: void usart1 (void) __interrupt (7) {}
;	-----------------------------------------
;	 function usart1
;	-----------------------------------------
_usart1:
	C$interrupts.c$96$1_0$60 ==.
	XG$usart1$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'usb'
;------------------------------------------------------------
	G$usb$0$0 ==.
	C$interrupts.c$97$1_0$63 ==.
;	interrupts.c:97: void usb (void) __interrupt (8) {}
;	-----------------------------------------
;	 function usb
;	-----------------------------------------
_usb:
	C$interrupts.c$97$1_0$63 ==.
	XG$usb$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c'
;------------------------------------------------------------
	G$i2c$0$0 ==.
	C$interrupts.c$98$1_0$66 ==.
;	interrupts.c:98: void i2c (void) __interrupt (9) {}
;	-----------------------------------------
;	 function i2c
;	-----------------------------------------
_i2c:
	C$interrupts.c$98$1_0$66 ==.
	XG$i2c$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'int4'
;------------------------------------------------------------
	G$int4$0$0 ==.
	C$interrupts.c$99$1_0$69 ==.
;	interrupts.c:99: void int4 (void) __interrupt (10) {}
;	-----------------------------------------
;	 function int4
;	-----------------------------------------
_int4:
	C$interrupts.c$99$1_0$69 ==.
	XG$int4$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'int5'
;------------------------------------------------------------
	G$int5$0$0 ==.
	C$interrupts.c$100$1_0$72 ==.
;	interrupts.c:100: void int5 (void) __interrupt (11) {}
;	-----------------------------------------
;	 function int5
;	-----------------------------------------
_int5:
	C$interrupts.c$100$1_0$72 ==.
	XG$int5$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'int6'
;------------------------------------------------------------
	G$int6$0$0 ==.
	C$interrupts.c$101$1_0$75 ==.
;	interrupts.c:101: void int6 (void) __interrupt (12) {}
;	-----------------------------------------
;	 function int6
;	-----------------------------------------
_int6:
	C$interrupts.c$101$1_0$75 ==.
	XG$int6$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'validEP'
;------------------------------------------------------------
;adrr                      Allocated to registers 
;------------------------------------------------------------
	G$validEP$0$0 ==.
	C$interrupts.c$103$1_0$77 ==.
;	interrupts.c:103: void validEP (unsigned char adrr)
;	-----------------------------------------
;	 function validEP
;	-----------------------------------------
_validEP:
	C$interrupts.c$105$1_0$77 ==.
;	interrupts.c:105: if (adrr == 0x01)
	C$interrupts.c$109$1_0$77 ==.
;	interrupts.c:109: }
	C$interrupts.c$109$1_0$77 ==.
	XG$validEP$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_status'
;------------------------------------------------------------
	G$get_status$0$0 ==.
	C$interrupts.c$112$1_0$80 ==.
;	interrupts.c:112: void get_status (void) {
;	-----------------------------------------
;	 function get_status
;	-----------------------------------------
_get_status:
	C$interrupts.c$113$1_0$80 ==.
;	interrupts.c:113: return;}
	C$interrupts.c$113$1_0$80 ==.
	XG$get_status$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_feature'
;------------------------------------------------------------
	G$clear_feature$0$0 ==.
	C$interrupts.c$114$1_0$82 ==.
;	interrupts.c:114: void clear_feature (void) {
;	-----------------------------------------
;	 function clear_feature
;	-----------------------------------------
_clear_feature:
	C$interrupts.c$115$1_0$82 ==.
;	interrupts.c:115: return;}
	C$interrupts.c$115$1_0$82 ==.
	XG$clear_feature$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reserve'
;------------------------------------------------------------
	G$reserve$0$0 ==.
	C$interrupts.c$116$1_0$84 ==.
;	interrupts.c:116: void reserve (void)
;	-----------------------------------------
;	 function reserve
;	-----------------------------------------
_reserve:
	C$interrupts.c$118$1_0$84 ==.
;	interrupts.c:118: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
	C$interrupts.c$119$1_0$84 ==.
;	interrupts.c:119: return;
	C$interrupts.c$120$1_0$84 ==.
;	interrupts.c:120: }
	C$interrupts.c$120$1_0$84 ==.
	XG$reserve$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_feature'
;------------------------------------------------------------
	G$set_feature$0$0 ==.
	C$interrupts.c$121$1_0$86 ==.
;	interrupts.c:121: void set_feature (void) {
;	-----------------------------------------
;	 function set_feature
;	-----------------------------------------
_set_feature:
	C$interrupts.c$122$1_0$86 ==.
;	interrupts.c:122: return;}
	C$interrupts.c$122$1_0$86 ==.
	XG$set_feature$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_adr'
;------------------------------------------------------------
	G$set_adr$0$0 ==.
	C$interrupts.c$123$1_0$88 ==.
;	interrupts.c:123: void set_adr (void) {
;	-----------------------------------------
;	 function set_adr
;	-----------------------------------------
_set_adr:
	C$interrupts.c$124$1_0$88 ==.
;	interrupts.c:124: return;}
	C$interrupts.c$124$1_0$88 ==.
	XG$set_adr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_descriptor'
;------------------------------------------------------------
;pData                     Allocated to registers 
;i                         Allocated to registers r6 
;------------------------------------------------------------
	G$get_descriptor$0$0 ==.
	C$interrupts.c$125$1_0$90 ==.
;	interrupts.c:125: void get_descriptor (void)
;	-----------------------------------------
;	 function get_descriptor
;	-----------------------------------------
_get_descriptor:
	C$interrupts.c$127$1_0$90 ==.
;	interrupts.c:127: if (ptr_dat[bmR] != 0x80)// проверка типа запроса, что запрос типа in
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00193$
	sjmp	00102$
00193$:
	C$interrupts.c$129$2_0$91 ==.
;	interrupts.c:129: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
	C$interrupts.c$130$2_0$91 ==.
;	interrupts.c:130: return;// выход с ошибкой
	ljmp	00130$
00102$:
	C$interrupts.c$132$1_0$90 ==.
;	interrupts.c:132: if ((ptr_dat[wVH] != 0x01) && (ptr_dat[wVH] != 0x02) && (ptr_dat[wVH] != 0x03))// проверка на get descriptor
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00194$
	sjmp	00104$
00194$:
	cjne	r7,#0x02,00195$
	sjmp	00104$
00195$:
	cjne	r7,#0x03,00196$
	sjmp	00104$
00196$:
	C$interrupts.c$134$2_0$92 ==.
;	interrupts.c:134: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
	C$interrupts.c$135$2_0$92 ==.
;	interrupts.c:135: return;// выход с ошибкой
	ljmp	00130$
00104$:
	C$interrupts.c$137$1_0$90 ==.
;	interrupts.c:137: if (ptr_dat[wVH] == 0x01)// дескриптор device
	cjne	r7,#0x01,00197$
	sjmp	00198$
00197$:
	ljmp	00112$
00198$:
	C$interrupts.c$139$2_0$93 ==.
;	interrupts.c:139: if ((ptr_dat[wVL] | ptr_dat[wIL] | ptr_dat[wIH]))// проверка на корректный формат требований
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	orl	ar6,a
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r6
	jz	00109$
	C$interrupts.c$141$3_0$94 ==.
;	interrupts.c:141: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
	C$interrupts.c$142$3_0$94 ==.
;	interrupts.c:142: return;// выход с ошибкой
	ljmp	00130$
00109$:
	C$interrupts.c$147$3_0$95 ==.
;	interrupts.c:147: SUDPTRCTL = 0x01;// должна быть 1 даже для ручной передачи дескрипторов (page 331)
	mov	dptr,#_SUDPTRCTL
	mov	a,#0x01
	movx	@dptr,a
	C$interrupts.c$150$4_1$97 ==.
;	interrupts.c:150: for (unsigned char i = 0; i < descr[0]; i++)// переписываем дескриптор в ep0buf
	mov	r6,#0x00
00128$:
	mov	dptr,#_descr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r5
	jnc	00107$
	C$interrupts.c$152$5_1$98 ==.
;	interrupts.c:152: pData[i] = descr[i];
	mov	a,#0x40
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,#0xe7
	mov	r5,a
	mov	a,r6
	mov	dptr,#_descr
	movc	a,@a+dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$interrupts.c$150$4_1$97 ==.
;	interrupts.c:150: for (unsigned char i = 0; i < descr[0]; i++)// переписываем дескриптор в ep0buf
	inc	r6
	sjmp	00128$
00107$:
	C$interrupts.c$154$3_1$96 ==.
;	interrupts.c:154: sync_delay();
	lcall	_sync_delay
	C$interrupts.c$155$3_1$96 ==.
;	interrupts.c:155: EP0BCH = 0x00;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
	C$interrupts.c$156$3_1$96 ==.
;	interrupts.c:156: sync_delay();
	lcall	_sync_delay
	C$interrupts.c$157$3_1$96 ==.
;	interrupts.c:157: EP0BCL = ptr_setupdat[wLL];
	mov	dpl,_ptr_setupdat
	mov	dph,(_ptr_setupdat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_EP0BCL
	movx	@dptr,a
	C$interrupts.c$158$3_1$96 ==.
;	interrupts.c:158: sync_delay();
	lcall	_sync_delay
	C$interrupts.c$159$3_1$96 ==.
;	interrupts.c:159: SUDPTRCTL = 0x00;
	mov	dptr,#_SUDPTRCTL
	clr	a
	movx	@dptr,a
	C$interrupts.c$160$3_1$96 ==.
;	interrupts.c:160: flagGetDesc = 1;
;	assignBit
	setb	_flagGetDesc
	C$interrupts.c$161$3_1$96 ==.
;	interrupts.c:161: return;
	ljmp	00130$
00112$:
	C$interrupts.c$164$1_0$90 ==.
;	interrupts.c:164: if (ptr_dat[wVH] == 0x02)// дескриптор configuration
	cjne	r7,#0x02,00117$
	C$interrupts.c$166$2_0$99 ==.
;	interrupts.c:166: SUDPTRCTL = 0x01;
	mov	dptr,#_SUDPTRCTL
	mov	a,#0x01
	movx	@dptr,a
	C$interrupts.c$167$2_0$99 ==.
;	interrupts.c:167: if (ptr_dat[wVL] | ptr_dat[wIH] | ptr_dat[wIL])// проверили на равенство 0
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	orl	ar6,a
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r6
	jz	00114$
	C$interrupts.c$169$3_0$100 ==.
;	interrupts.c:169: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
	C$interrupts.c$170$3_0$100 ==.
;	interrupts.c:170: return;// выход с ошибкой
	ljmp	00130$
00114$:
	C$interrupts.c$174$3_0$101 ==.
;	interrupts.c:174: SUDPTRL = (unsigned char) configuration0 & 0xff;
	mov	dptr,#_SUDPTRL
	mov	a,#_configuration0
	movx	@dptr,a
	C$interrupts.c$175$3_0$101 ==.
;	interrupts.c:175: SUDPTRH =  ((unsigned short) configuration0) >> 8;
	mov	r5,#_configuration0
	mov	r6,#(_configuration0 >> 8)
	mov	dptr,#_SUDPTRH
	mov	a,r6
	movx	@dptr,a
	C$interrupts.c$176$3_0$101 ==.
;	interrupts.c:176: flagGetDesc = 1;
;	assignBit
	setb	_flagGetDesc
	C$interrupts.c$177$3_0$101 ==.
;	interrupts.c:177: return;
	sjmp	00130$
00117$:
	C$interrupts.c$180$1_0$90 ==.
;	interrupts.c:180: if (ptr_dat[wVH] == 0x03)
	cjne	r7,#0x03,00130$
	C$interrupts.c$182$2_0$102 ==.
;	interrupts.c:182: if ((!(ptr_dat[wIH])) && (!(ptr_dat[wIL])))// проверка требования 0-й строки
	mov	a,#0x05
	add	a,_ptr_dat
	mov	r6,a
	clr	a
	addc	a,(_ptr_dat + 1)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jnz	00119$
	mov	a,#0x04
	add	a,_ptr_dat
	mov	r6,a
	clr	a
	addc	a,(_ptr_dat + 1)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jnz	00119$
	C$interrupts.c$184$3_0$103 ==.
;	interrupts.c:184: SUDPTRL = (unsigned char) string0 & 0xff;
	mov	dptr,#_SUDPTRL
	mov	a,#_string0
	movx	@dptr,a
	C$interrupts.c$185$3_0$103 ==.
;	interrupts.c:185: SUDPTRH =  ((unsigned short) string0) >> 8;
	mov	r6,#_string0
	mov	r7,#(_string0 >> 8)
	mov	dptr,#_SUDPTRH
	mov	a,r7
	movx	@dptr,a
	C$interrupts.c$186$3_0$103 ==.
;	interrupts.c:186: flagGetDesc = 1;
;	assignBit
	setb	_flagGetDesc
	C$interrupts.c$187$3_0$103 ==.
;	interrupts.c:187: return;
	sjmp	00130$
00119$:
	C$interrupts.c$189$2_0$102 ==.
;	interrupts.c:189: if (ptr_dat[wVL] == 0x01)// строка производителя
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00122$
	C$interrupts.c$191$3_0$104 ==.
;	interrupts.c:191: SUDPTRL = (unsigned char) string1 & 0xff;
	mov	dptr,#_SUDPTRL
	mov	a,#_string1
	movx	@dptr,a
	C$interrupts.c$192$3_0$104 ==.
;	interrupts.c:192: SUDPTRH =  ((unsigned short) string1) >> 8;
	mov	r5,#_string1
	mov	r6,#(_string1 >> 8)
	mov	dptr,#_SUDPTRH
	mov	a,r6
	movx	@dptr,a
	C$interrupts.c$193$3_0$104 ==.
;	interrupts.c:193: flagGetDesc = 1;
;	assignBit
	setb	_flagGetDesc
	C$interrupts.c$194$3_0$104 ==.
;	interrupts.c:194: return;
	sjmp	00130$
00122$:
	C$interrupts.c$196$2_0$102 ==.
;	interrupts.c:196: if (ptr_dat[wVL] == 0x02)// строка производителя
	cjne	r7,#0x02,00124$
	C$interrupts.c$198$3_0$105 ==.
;	interrupts.c:198: SUDPTRL = (unsigned char) string2 & 0xff;
	mov	dptr,#_SUDPTRL
	mov	a,#_string2
	movx	@dptr,a
	C$interrupts.c$199$3_0$105 ==.
;	interrupts.c:199: SUDPTRH =  ((unsigned short) string2) >> 8;
	mov	r6,#_string2
	mov	r7,#(_string2 >> 8)
	mov	dptr,#_SUDPTRH
	mov	a,r7
	movx	@dptr,a
	C$interrupts.c$200$3_0$105 ==.
;	interrupts.c:200: flagGetDesc = 1;
;	assignBit
	setb	_flagGetDesc
	C$interrupts.c$201$3_0$105 ==.
;	interrupts.c:201: return;
	sjmp	00130$
00124$:
	C$interrupts.c$203$2_0$102 ==.
;	interrupts.c:203: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
	C$interrupts.c$204$2_0$102 ==.
;	interrupts.c:204: return;// выход с ошибкой
00130$:
	C$interrupts.c$206$1_0$90 ==.
;	interrupts.c:206: }
	C$interrupts.c$206$1_0$90 ==.
	XG$get_descriptor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_descriptor'
;------------------------------------------------------------
	G$set_descriptor$0$0 ==.
	C$interrupts.c$208$1_0$107 ==.
;	interrupts.c:208: void set_descriptor (void) {
;	-----------------------------------------
;	 function set_descriptor
;	-----------------------------------------
_set_descriptor:
	C$interrupts.c$209$1_0$107 ==.
;	interrupts.c:209: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
	C$interrupts.c$210$1_0$107 ==.
;	interrupts.c:210: return;}
	C$interrupts.c$210$1_0$107 ==.
	XG$set_descriptor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_configurated'
;------------------------------------------------------------
	G$get_configurated$0$0 ==.
	C$interrupts.c$211$1_0$109 ==.
;	interrupts.c:211: void get_configurated (void) {return;}
;	-----------------------------------------
;	 function get_configurated
;	-----------------------------------------
_get_configurated:
	C$interrupts.c$211$1_0$109 ==.
	XG$get_configurated$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_configurated'
;------------------------------------------------------------
	G$set_configurated$0$0 ==.
	C$interrupts.c$212$1_0$111 ==.
;	interrupts.c:212: void set_configurated (void)
;	-----------------------------------------
;	 function set_configurated
;	-----------------------------------------
_set_configurated:
	C$interrupts.c$214$1_0$111 ==.
;	interrupts.c:214: if (ptr_setupdat[bmR] | ptr_setupdat[wLL] | ptr_setupdat[wLH] | ptr_setupdat[wIL] | ptr_setupdat[wIH]
	mov	dpl,_ptr_setupdat
	mov	dph,(_ptr_setupdat + 1)
	movx	a,@dptr
	mov	r7,a
	mov	dpl,_ptr_setupdat
	mov	dph,(_ptr_setupdat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	orl	ar7,a
	mov	dpl,_ptr_setupdat
	mov	dph,(_ptr_setupdat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	orl	ar7,a
	mov	dpl,_ptr_setupdat
	mov	dph,(_ptr_setupdat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	orl	ar7,a
	mov	dpl,_ptr_setupdat
	mov	dph,(_ptr_setupdat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	orl	ar7,a
	C$interrupts.c$215$1_0$111 ==.
;	interrupts.c:215: | ptr_setupdat[wVH])// проверка корректности запроса
	mov	dpl,_ptr_setupdat
	mov	dph,(_ptr_setupdat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r7
	jz	00102$
	C$interrupts.c$217$2_0$112 ==.
;	interrupts.c:217: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
	C$interrupts.c$218$2_0$112 ==.
;	interrupts.c:218: return;// выход с ошибкой
	sjmp	00108$
00102$:
	C$interrupts.c$220$1_0$111 ==.
;	interrupts.c:220: if (ptr_setupdat[wVL])// проверка конфигурации, пока поддерживается только 0-я и 1-я
	mov	a,#0x02
	add	a,_ptr_setupdat
	mov	r6,a
	clr	a
	addc	a,(_ptr_setupdat + 1)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	jz	00108$
	C$interrupts.c$222$2_0$113 ==.
;	interrupts.c:222: if (ptr_setupdat[wVL] != 0x01)
	cjne	r5,#0x01,00124$
	sjmp	00104$
00124$:
	C$interrupts.c$224$3_0$114 ==.
;	interrupts.c:224: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
	C$interrupts.c$225$3_0$114 ==.
;	interrupts.c:225: return;// выход с ошибкой
	sjmp	00108$
00104$:
	C$interrupts.c$229$3_0$115 ==.
;	interrupts.c:229: flagCfgUsb = 1;
;	assignBit
	setb	_flagCfgUsb
	C$interrupts.c$230$3_0$115 ==.
;	interrupts.c:230: ptr_setupdat[wVL] = 0;
	mov	dpl,r6
	mov	dph,r7
	clr	a
	movx	@dptr,a
	C$interrupts.c$231$3_0$115 ==.
;	interrupts.c:231: flagAltUsb = 0;
;	assignBit
	clr	_flagAltUsb
00108$:
	C$interrupts.c$235$1_0$111 ==.
;	interrupts.c:235: }
	C$interrupts.c$235$1_0$111 ==.
	XG$set_configurated$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_interface'
;------------------------------------------------------------
	G$get_interface$0$0 ==.
	C$interrupts.c$236$1_0$117 ==.
;	interrupts.c:236: void get_interface (void) {return;}
;	-----------------------------------------
;	 function get_interface
;	-----------------------------------------
_get_interface:
	C$interrupts.c$236$1_0$117 ==.
	XG$get_interface$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_interface'
;------------------------------------------------------------
	G$set_interface$0$0 ==.
	C$interrupts.c$237$1_0$119 ==.
;	interrupts.c:237: void set_interface (void) {return;}
;	-----------------------------------------
;	 function set_interface
;	-----------------------------------------
_set_interface:
	C$interrupts.c$237$1_0$119 ==.
	XG$set_interface$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'synch_frame'
;------------------------------------------------------------
	G$synch_frame$0$0 ==.
	C$interrupts.c$238$1_0$121 ==.
;	interrupts.c:238: void synch_frame (void) {return;}
;	-----------------------------------------
;	 function synch_frame
;	-----------------------------------------
_synch_frame:
	C$interrupts.c$238$1_0$121 ==.
	XG$synch_frame$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SUDAV'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$SUDAV$0$0 ==.
	C$interrupts.c$243$1_0$124 ==.
;	interrupts.c:243: void SUDAV (void)
;	-----------------------------------------
;	 function SUDAV
;	-----------------------------------------
_SUDAV:
	C$interrupts.c$246$1_0$124 ==.
;	interrupts.c:246: EXIF &= 0xEF;// снимаем прерывание USB
	anl	_EXIF,#0xef
	C$interrupts.c$247$1_0$124 ==.
;	interrupts.c:247: USBIRQ = (1<<bSUDAV); // снимаем прерывание sudav
	mov	dptr,#_USBIRQ
	mov	a,#0x01
	movx	@dptr,a
	C$interrupts.c$253$1_0$124 ==.
;	interrupts.c:253: ptr_setupdat = (__xdata unsigned char *)setupdat;
	mov	_ptr_setupdat,#0xb8
	mov	(_ptr_setupdat + 1),#0xe6
	C$interrupts.c$254$1_0$124 ==.
;	interrupts.c:254: for (int i = 0; i < setupdat_size; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00114$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
	C$interrupts.c$256$3_0$126 ==.
;	interrupts.c:256: ptr_dat[i] = ptr_setupdat[i];
	mov	a,r6
	add	a,_ptr_dat
	mov	r4,a
	mov	a,r7
	addc	a,(_ptr_dat + 1)
	mov	r5,a
	mov	a,#0xb8
	add	a,r6
	mov	dpl,a
	mov	a,#0xe6
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$interrupts.c$254$2_0$125 ==.
;	interrupts.c:254: for (int i = 0; i < setupdat_size; i++)
	inc	r6
	cjne	r6,#0x00,00114$
	inc	r7
	sjmp	00114$
00101$:
	C$interrupts.c$265$1_0$124 ==.
;	interrupts.c:265: flagStallEP0 = 0;// очистили флаг ошибки EP0
;	assignBit
	clr	_flagStallEP0
	C$interrupts.c$267$1_0$124 ==.
;	interrupts.c:267: if (!(ptr_dat[bmR] & 0x60) && (ptr_dat[bR] < 0x0D))// проверяем что требование стандартное и попадает в диапазон стандартных требований (13)
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x60
	jz	00150$
	ljmp	00110$
00150$:
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0d,00151$
00151$:
	jnc	00110$
	C$interrupts.c$270$2_0$127 ==.
;	interrupts.c:270: std_func[ptr_dat[bR]]();// функция обработки требования
	mov	a,r7
	add	a,r7
	add	a,#_std_func
	mov	r1,a
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	push	ar7
	push	ar6
	mov	dpl,r6
	mov	dph,r7
	lcall	__sdcc_call_dptr
	pop	ar6
	pop	ar7
	C$interrupts.c$272$2_0$127 ==.
;	interrupts.c:272: if (flagStallEP0)
	jnb	_flagStallEP0,00103$
	C$interrupts.c$274$3_0$128 ==.
;	interrupts.c:274: EP0CS = (unsigned char) ((1<<HSNAK) | (1<<STALL));// устанавливаем stall, снимаем snak
	mov	dptr,#_EP0CS
	mov	a,#0x81
	movx	@dptr,a
	C$interrupts.c$275$3_0$128 ==.
;	interrupts.c:275: __asm__("reti");
	reti
00103$:
	C$interrupts.c$278$2_0$127 ==.
;	interrupts.c:278: EP0CS |= (1<<HSNAK);
	mov	dptr,#_EP0CS
	movx	a,@dptr
	orl	acc,#0x80
	movx	@dptr,a
	C$interrupts.c$281$2_0$127 ==.
;	interrupts.c:281: if (!(ptr_dat[bmR] & 0x80))// если направление OUT
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00105$
	C$interrupts.c$283$3_0$129 ==.
;	interrupts.c:283: __asm__("reti");
	reti
00105$:
	C$interrupts.c$286$2_0$127 ==.
;	interrupts.c:286: if (flagGetDesc)// если надо передать дескриптор с помощью системы автоматической передачи дескрипторов (адреса мы прописали в подпрограмме)
	C$interrupts.c$288$3_0$130 ==.
;	interrupts.c:288: flagGetDesc = 0;
;	assignBit
	jbc	_flagGetDesc,00155$
	sjmp	00107$
00155$:
	C$interrupts.c$289$3_0$130 ==.
;	interrupts.c:289: __asm__("reti");
	reti
	sjmp	00111$
00107$:
	C$interrupts.c$293$3_0$131 ==.
;	interrupts.c:293: sync_delay();
	lcall	_sync_delay
	C$interrupts.c$294$3_0$131 ==.
;	interrupts.c:294: EP0BCH = ptr_dat[wLH];
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_EP0BCH
	movx	@dptr,a
	C$interrupts.c$295$3_0$131 ==.
;	interrupts.c:295: sync_delay();
	lcall	_sync_delay
	C$interrupts.c$296$3_0$131 ==.
;	interrupts.c:296: EP0BCL = ptr_dat[wLL];
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_EP0BCL
	movx	@dptr,a
	C$interrupts.c$297$3_0$131 ==.
;	interrupts.c:297: sync_delay();
	lcall	_sync_delay
	sjmp	00111$
00110$:
	C$interrupts.c$304$2_0$132 ==.
;	interrupts.c:304: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
	C$interrupts.c$305$2_0$132 ==.
;	interrupts.c:305: EP0CS = (unsigned char) ((1<<HSNAK) | (1<<STALL));// устанавливаем stall, снимаем snak
	mov	dptr,#_EP0CS
	mov	a,#0x81
	movx	@dptr,a
	C$interrupts.c$306$2_0$132 ==.
;	interrupts.c:306: __asm__("reti");
	reti
00111$:
	C$interrupts.c$308$1_0$124 ==.
;	interrupts.c:308: __asm__("reti");
	reti
	C$interrupts.c$309$1_0$124 ==.
;	interrupts.c:309: }
	C$interrupts.c$309$1_0$124 ==.
	XG$SUDAV$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SOF'
;------------------------------------------------------------
	G$SOF$0$0 ==.
	C$interrupts.c$310$1_0$135 ==.
;	interrupts.c:310: void SOF (void) {}
;	-----------------------------------------
;	 function SOF
;	-----------------------------------------
_SOF:
	C$interrupts.c$310$1_0$135 ==.
	XG$SOF$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SUTOC'
;------------------------------------------------------------
	G$SUTOC$0$0 ==.
	C$interrupts.c$311$1_0$138 ==.
;	interrupts.c:311: void SUTOC (void) {}
;	-----------------------------------------
;	 function SUTOC
;	-----------------------------------------
_SUTOC:
	C$interrupts.c$311$1_0$138 ==.
	XG$SUTOC$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SUSPEND'
;------------------------------------------------------------
	G$SUSPEND$0$0 ==.
	C$interrupts.c$312$1_0$141 ==.
;	interrupts.c:312: void SUSPEND (void) {}
;	-----------------------------------------
;	 function SUSPEND
;	-----------------------------------------
_SUSPEND:
	C$interrupts.c$312$1_0$141 ==.
	XG$SUSPEND$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_RESET'
;------------------------------------------------------------
	G$USB_RESET$0$0 ==.
	C$interrupts.c$313$1_0$144 ==.
;	interrupts.c:313: void USB_RESET (void) {}
;	-----------------------------------------
;	 function USB_RESET
;	-----------------------------------------
_USB_RESET:
	C$interrupts.c$313$1_0$144 ==.
	XG$USB_RESET$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HISPEED'
;------------------------------------------------------------
	G$HISPEED$0$0 ==.
	C$interrupts.c$314$1_0$147 ==.
;	interrupts.c:314: void HISPEED (void) {}
;	-----------------------------------------
;	 function HISPEED
;	-----------------------------------------
_HISPEED:
	C$interrupts.c$314$1_0$147 ==.
	XG$HISPEED$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0ACK'
;------------------------------------------------------------
	G$EP0ACK$0$0 ==.
	C$interrupts.c$315$1_0$150 ==.
;	interrupts.c:315: void EP0ACK (void) {}
;	-----------------------------------------
;	 function EP0ACK
;	-----------------------------------------
_EP0ACK:
	C$interrupts.c$315$1_0$150 ==.
	XG$EP0ACK$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_reserved_'
;------------------------------------------------------------
	G$_reserved_$0$0 ==.
	C$interrupts.c$316$1_0$153 ==.
;	interrupts.c:316: void _reserved_ (void) {}
;	-----------------------------------------
;	 function _reserved_
;	-----------------------------------------
__reserved_:
	C$interrupts.c$316$1_0$153 ==.
	XG$_reserved_$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0IN'
;------------------------------------------------------------
	G$EP0IN$0$0 ==.
	C$interrupts.c$317$1_0$156 ==.
;	interrupts.c:317: void EP0IN (void) {}
;	-----------------------------------------
;	 function EP0IN
;	-----------------------------------------
_EP0IN:
	C$interrupts.c$317$1_0$156 ==.
	XG$EP0IN$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0OUT'
;------------------------------------------------------------
	G$EP0OUT$0$0 ==.
	C$interrupts.c$318$1_0$159 ==.
;	interrupts.c:318: void EP0OUT (void) {}
;	-----------------------------------------
;	 function EP0OUT
;	-----------------------------------------
_EP0OUT:
	C$interrupts.c$318$1_0$159 ==.
	XG$EP0OUT$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1IN'
;------------------------------------------------------------
	G$EP1IN$0$0 ==.
	C$interrupts.c$319$1_0$162 ==.
;	interrupts.c:319: void EP1IN (void) {}
;	-----------------------------------------
;	 function EP1IN
;	-----------------------------------------
_EP1IN:
	C$interrupts.c$319$1_0$162 ==.
	XG$EP1IN$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1OUT'
;------------------------------------------------------------
	G$EP1OUT$0$0 ==.
	C$interrupts.c$320$1_0$165 ==.
;	interrupts.c:320: void EP1OUT (void) {}
;	-----------------------------------------
;	 function EP1OUT
;	-----------------------------------------
_EP1OUT:
	C$interrupts.c$320$1_0$165 ==.
	XG$EP1OUT$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP2'
;------------------------------------------------------------
	G$EP2$0$0 ==.
	C$interrupts.c$321$1_0$168 ==.
;	interrupts.c:321: void EP2 (void) {}
;	-----------------------------------------
;	 function EP2
;	-----------------------------------------
_EP2:
	C$interrupts.c$321$1_0$168 ==.
	XG$EP2$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP4'
;------------------------------------------------------------
	G$EP4$0$0 ==.
	C$interrupts.c$322$1_0$171 ==.
;	interrupts.c:322: void EP4 (void) {}
;	-----------------------------------------
;	 function EP4
;	-----------------------------------------
_EP4:
	C$interrupts.c$322$1_0$171 ==.
	XG$EP4$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP6'
;------------------------------------------------------------
	G$EP6$0$0 ==.
	C$interrupts.c$323$1_0$174 ==.
;	interrupts.c:323: void EP6 (void) {}
;	-----------------------------------------
;	 function EP6
;	-----------------------------------------
_EP6:
	C$interrupts.c$323$1_0$174 ==.
	XG$EP6$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP8'
;------------------------------------------------------------
	G$EP8$0$0 ==.
	C$interrupts.c$324$1_0$177 ==.
;	interrupts.c:324: void EP8 (void) {}
;	-----------------------------------------
;	 function EP8
;	-----------------------------------------
_EP8:
	C$interrupts.c$324$1_0$177 ==.
	XG$EP8$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IBN'
;------------------------------------------------------------
	G$IBN$0$0 ==.
	C$interrupts.c$325$1_0$180 ==.
;	interrupts.c:325: void IBN (void) {}
;	-----------------------------------------
;	 function IBN
;	-----------------------------------------
_IBN:
	C$interrupts.c$325$1_0$180 ==.
	XG$IBN$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_reserved2_'
;------------------------------------------------------------
	G$_reserved2_$0$0 ==.
	C$interrupts.c$326$1_0$183 ==.
;	interrupts.c:326: void _reserved2_ (void) {}
;	-----------------------------------------
;	 function _reserved2_
;	-----------------------------------------
__reserved2_:
	C$interrupts.c$326$1_0$183 ==.
	XG$_reserved2_$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0PING'
;------------------------------------------------------------
	G$EP0PING$0$0 ==.
	C$interrupts.c$327$1_0$186 ==.
;	interrupts.c:327: void EP0PING (void) {}
;	-----------------------------------------
;	 function EP0PING
;	-----------------------------------------
_EP0PING:
	C$interrupts.c$327$1_0$186 ==.
	XG$EP0PING$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1PING'
;------------------------------------------------------------
	G$EP1PING$0$0 ==.
	C$interrupts.c$328$1_0$189 ==.
;	interrupts.c:328: void EP1PING (void) {}
;	-----------------------------------------
;	 function EP1PING
;	-----------------------------------------
_EP1PING:
	C$interrupts.c$328$1_0$189 ==.
	XG$EP1PING$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP2PING'
;------------------------------------------------------------
	G$EP2PING$0$0 ==.
	C$interrupts.c$329$1_0$192 ==.
;	interrupts.c:329: void EP2PING (void) {}
;	-----------------------------------------
;	 function EP2PING
;	-----------------------------------------
_EP2PING:
	C$interrupts.c$329$1_0$192 ==.
	XG$EP2PING$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP4PING'
;------------------------------------------------------------
	G$EP4PING$0$0 ==.
	C$interrupts.c$330$1_0$195 ==.
;	interrupts.c:330: void EP4PING (void) {}
;	-----------------------------------------
;	 function EP4PING
;	-----------------------------------------
_EP4PING:
	C$interrupts.c$330$1_0$195 ==.
	XG$EP4PING$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP6PING'
;------------------------------------------------------------
	G$EP6PING$0$0 ==.
	C$interrupts.c$331$1_0$198 ==.
;	interrupts.c:331: void EP6PING (void) {}
;	-----------------------------------------
;	 function EP6PING
;	-----------------------------------------
_EP6PING:
	C$interrupts.c$331$1_0$198 ==.
	XG$EP6PING$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP8PING'
;------------------------------------------------------------
	G$EP8PING$0$0 ==.
	C$interrupts.c$332$1_0$201 ==.
;	interrupts.c:332: void EP8PING (void) {}
;	-----------------------------------------
;	 function EP8PING
;	-----------------------------------------
_EP8PING:
	C$interrupts.c$332$1_0$201 ==.
	XG$EP8PING$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ERRLIMIT'
;------------------------------------------------------------
	G$ERRLIMIT$0$0 ==.
	C$interrupts.c$333$1_0$204 ==.
;	interrupts.c:333: void ERRLIMIT (void) {}
;	-----------------------------------------
;	 function ERRLIMIT
;	-----------------------------------------
_ERRLIMIT:
	C$interrupts.c$333$1_0$204 ==.
	XG$ERRLIMIT$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_reserved3_'
;------------------------------------------------------------
	G$_reserved3_$0$0 ==.
	C$interrupts.c$334$1_0$207 ==.
;	interrupts.c:334: void _reserved3_ (void) {}
;	-----------------------------------------
;	 function _reserved3_
;	-----------------------------------------
__reserved3_:
	C$interrupts.c$334$1_0$207 ==.
	XG$_reserved3_$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_reserved4_'
;------------------------------------------------------------
	G$_reserved4_$0$0 ==.
	C$interrupts.c$335$1_0$210 ==.
;	interrupts.c:335: void _reserved4_ (void) {}
;	-----------------------------------------
;	 function _reserved4_
;	-----------------------------------------
__reserved4_:
	C$interrupts.c$335$1_0$210 ==.
	XG$_reserved4_$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_reserved5_'
;------------------------------------------------------------
	G$_reserved5_$0$0 ==.
	C$interrupts.c$336$1_0$213 ==.
;	interrupts.c:336: void _reserved5_ (void) {}
;	-----------------------------------------
;	 function _reserved5_
;	-----------------------------------------
__reserved5_:
	C$interrupts.c$336$1_0$213 ==.
	XG$_reserved5_$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP2ISOERR'
;------------------------------------------------------------
	G$EP2ISOERR$0$0 ==.
	C$interrupts.c$337$1_0$216 ==.
;	interrupts.c:337: void EP2ISOERR (void) {}
;	-----------------------------------------
;	 function EP2ISOERR
;	-----------------------------------------
_EP2ISOERR:
	C$interrupts.c$337$1_0$216 ==.
	XG$EP2ISOERR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP4ISOERR'
;------------------------------------------------------------
	G$EP4ISOERR$0$0 ==.
	C$interrupts.c$338$1_0$219 ==.
;	interrupts.c:338: void EP4ISOERR (void) {}
;	-----------------------------------------
;	 function EP4ISOERR
;	-----------------------------------------
_EP4ISOERR:
	C$interrupts.c$338$1_0$219 ==.
	XG$EP4ISOERR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP6ISOERR'
;------------------------------------------------------------
	G$EP6ISOERR$0$0 ==.
	C$interrupts.c$339$1_0$222 ==.
;	interrupts.c:339: void EP6ISOERR (void) {}
;	-----------------------------------------
;	 function EP6ISOERR
;	-----------------------------------------
_EP6ISOERR:
	C$interrupts.c$339$1_0$222 ==.
	XG$EP6ISOERR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP8ISOERR'
;------------------------------------------------------------
	G$EP8ISOERR$0$0 ==.
	C$interrupts.c$340$1_0$225 ==.
;	interrupts.c:340: void EP8ISOERR (void) {}
;	-----------------------------------------
;	 function EP8ISOERR
;	-----------------------------------------
_EP8ISOERR:
	C$interrupts.c$340$1_0$225 ==.
	XG$EP8ISOERR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_byte_uart_9600'
;------------------------------------------------------------
;byte                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
	G$send_byte_uart_9600$0$0 ==.
	C$interrupts.c$342$1_0$227 ==.
;	interrupts.c:342: void send_byte_uart_9600 (unsigned char byte)
;	-----------------------------------------
;	 function send_byte_uart_9600
;	-----------------------------------------
_send_byte_uart_9600:
	mov	r7,dpl
	C$interrupts.c$344$1_0$227 ==.
;	interrupts.c:344: TMOD = (0<<TMOD0 | 1<<TMOD1);// 8bit counter0 with auto-reload T0
	mov	_TMOD,#0x02
	C$interrupts.c$345$1_0$227 ==.
;	interrupts.c:345: CKCON = (0<<CKCON3);// CLK/12
	mov	_CKCON,#0x00
	C$interrupts.c$346$1_0$227 ==.
;	interrupts.c:346: TH0 = 0x30;// 48 T0
	mov	_TH0,#0x30
	C$interrupts.c$347$1_0$227 ==.
;	interrupts.c:347: TL0 = 0x00;
	mov	_TL0,#0x00
	C$interrupts.c$348$1_0$227 ==.
;	interrupts.c:348: PA0 = 0;
;	assignBit
	clr	_PA0
	C$interrupts.c$350$1_0$227 ==.
;	interrupts.c:350: TR0 = 1;// run timer0
;	assignBit
	setb	_TR0
	C$interrupts.c$351$1_0$227 ==.
;	interrupts.c:351: while (!TF0);
00101$:
	C$interrupts.c$352$1_0$227 ==.
;	interrupts.c:352: TF0 = 0;
;	assignBit
	jbc	_TF0,00160$
	sjmp	00101$
00160$:
	C$interrupts.c$353$1_0$227 ==.
;	interrupts.c:353: for (unsigned char i = 0; i < 8; i++)
	mov	r6,#0x00
00115$:
	cjne	r6,#0x08,00161$
00161$:
	jnc	00107$
	C$interrupts.c$355$3_0$229 ==.
;	interrupts.c:355: PA0 = ((byte >> i) & 0x01);
	mov	b,r6
	inc	b
	mov	a,r7
	sjmp	00164$
00163$:
	clr	c
	rrc	a
00164$:
	djnz	b,00163$
	anl	a,#0x01
;	assignBit
	mov	r5,a
	add	a,#0xff
	mov	_PA0,c
	C$interrupts.c$356$3_0$229 ==.
;	interrupts.c:356: while (!TF0);
00104$:
	C$interrupts.c$357$3_0$229 ==.
;	interrupts.c:357: TF0 = 0;
;	assignBit
	jbc	_TF0,00165$
	sjmp	00104$
00165$:
	C$interrupts.c$353$2_0$228 ==.
;	interrupts.c:353: for (unsigned char i = 0; i < 8; i++)
	inc	r6
	sjmp	00115$
00107$:
	C$interrupts.c$359$1_0$227 ==.
;	interrupts.c:359: PA0 = 1;
;	assignBit
	setb	_PA0
	C$interrupts.c$360$1_0$227 ==.
;	interrupts.c:360: while (!TF0);
00108$:
	C$interrupts.c$361$1_0$227 ==.
;	interrupts.c:361: TF0 = 0;
;	assignBit
	jbc	_TF0,00166$
	sjmp	00108$
00166$:
	C$interrupts.c$362$1_0$227 ==.
;	interrupts.c:362: while (!TF0);
00111$:
	C$interrupts.c$363$1_0$227 ==.
;	interrupts.c:363: TF0 = 0;
;	assignBit
	jbc	_TF0,00167$
	sjmp	00111$
00167$:
	C$interrupts.c$364$1_0$227 ==.
;	interrupts.c:364: TR0 = 0;
;	assignBit
	clr	_TR0
	C$interrupts.c$365$1_0$227 ==.
;	interrupts.c:365: TH0 = 0;
	mov	_TH0,#0x00
	C$interrupts.c$366$1_0$227 ==.
;	interrupts.c:366: TL0 = 0;
	mov	_TL0,#0x00
	C$interrupts.c$367$1_0$227 ==.
;	interrupts.c:367: return;
	C$interrupts.c$369$1_0$227 ==.
;	interrupts.c:369: }
	C$interrupts.c$369$1_0$227 ==.
	XG$send_byte_uart_9600$0$0 ==.
	ret
	.area USB_INTERRUPTS(CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
