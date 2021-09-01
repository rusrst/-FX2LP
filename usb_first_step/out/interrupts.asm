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
_ptr_dat::
	.ds 2
_ptr_descriptor::
	.ds 2
_ptr_setupdat::
	.ds 2
_std_func::
	.ds 26
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:53: __xdata unsigned char *ptr_dat = (__xdata unsigned char *) xdata_temp;// указатель набуфер
	mov	_ptr_dat,#0x00
	mov	(_ptr_dat + 1),#0xe1
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:206: void (*std_func[13]) (void) = {get_status, clear_feature, reserve, set_feature, reserve, set_adr, get_descriptor,
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:71: volatile void vectors (void) __naked
;	-----------------------------------------
;	 function vectors
;	-----------------------------------------
_vectors:
;	naked function: no prologue.
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:82: __endasm;
	ljmp	_SUDAV
	nop
	ljmp	_SOF
	nop
	ljmp	_SUTOC
	nop
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:83: }
;	naked function: no epilogue.
;------------------------------------------------------------
;Allocation info for local variables in function 'int0'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:89: void int0 (void) __interrupt (0) {}
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:90: void tim0 (void) __interrupt (1) {}
;	-----------------------------------------
;	 function tim0
;	-----------------------------------------
_tim0:
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:91: void int1 (void) __interrupt (2) {}
;	-----------------------------------------
;	 function int1
;	-----------------------------------------
_int1:
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:92: void tim1 (void) __interrupt (3) {}
;	-----------------------------------------
;	 function tim1
;	-----------------------------------------
_tim1:
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:93: void usart0 (void) __interrupt (4) {}
;	-----------------------------------------
;	 function usart0
;	-----------------------------------------
_usart0:
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:94: void tim2 (void) __interrupt (5) {}
;	-----------------------------------------
;	 function tim2
;	-----------------------------------------
_tim2:
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:95: void res (void) __interrupt (6) {}
;	-----------------------------------------
;	 function res
;	-----------------------------------------
_res:
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:96: void usart1 (void) __interrupt (7) {}
;	-----------------------------------------
;	 function usart1
;	-----------------------------------------
_usart1:
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:97: void usb (void) __interrupt (8) {}
;	-----------------------------------------
;	 function usb
;	-----------------------------------------
_usb:
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:98: void i2c (void) __interrupt (9) {}
;	-----------------------------------------
;	 function i2c
;	-----------------------------------------
_i2c:
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:99: void int4 (void) __interrupt (10) {}
;	-----------------------------------------
;	 function int4
;	-----------------------------------------
_int4:
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:100: void int5 (void) __interrupt (11) {}
;	-----------------------------------------
;	 function int5
;	-----------------------------------------
_int5:
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:101: void int6 (void) __interrupt (12) {}
;	-----------------------------------------
;	 function int6
;	-----------------------------------------
_int6:
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop not_psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'get_status'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:103: void get_status (void) {
;	-----------------------------------------
;	 function get_status
;	-----------------------------------------
_get_status:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:104: return;}
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_feature'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:105: void clear_feature (void) {
;	-----------------------------------------
;	 function clear_feature
;	-----------------------------------------
_clear_feature:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:106: return;}
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reserve'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:107: void reserve (void)
;	-----------------------------------------
;	 function reserve
;	-----------------------------------------
_reserve:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:109: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:110: return;
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_feature'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:112: void set_feature (void) {
;	-----------------------------------------
;	 function set_feature
;	-----------------------------------------
_set_feature:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:113: return;}
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_adr'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:114: void set_adr (void) {
;	-----------------------------------------
;	 function set_adr
;	-----------------------------------------
_set_adr:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:115: return;}
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_descriptor'
;------------------------------------------------------------
;pData                     Allocated to registers 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:116: void get_descriptor (void)
;	-----------------------------------------
;	 function get_descriptor
;	-----------------------------------------
_get_descriptor:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:118: if (ptr_dat[bmR] != 0x80)// проверка типа запроса, что запрос типа in
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x80,00193$
	sjmp	00102$
00193$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:120: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:121: return;// выход с ошибкой
	ret
00102$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:123: if ((ptr_dat[wVH] != 0x01) && (ptr_dat[wVH] != 0x02) && (ptr_dat[wVH] != 0x03))// проверка на get descriptor
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:125: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:126: return;// выход с ошибкой
	ret
00104$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:128: if (ptr_dat[wVH] == 0x01)// дескриптор device
	cjne	r7,#0x01,00197$
	sjmp	00198$
00197$:
	sjmp	00112$
00198$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:130: if ((ptr_dat[wVL] | ptr_dat[wIL] | ptr_dat[wIH]))// проверка на корректный формат требований
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:132: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:133: return;// выход с ошибкой
	ret
00109$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:138: SUDPTRCTL = 0x01;// должна быть 1 даже для ручной передачи дескрипторов (page 331)
	mov	dptr,#_SUDPTRCTL
	mov	a,#0x01
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:141: for (unsigned char i = 0; i < descr[0]; i++)// переписываем дескриптор в ep0buf
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:143: pData[i] = descr[i];
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:141: for (unsigned char i = 0; i < descr[0]; i++)// переписываем дескриптор в ep0buf
	inc	r6
	sjmp	00128$
00107$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:145: sync_delay();
	lcall	_sync_delay
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:146: EP0BCH = 0x00;
	mov	dptr,#_EP0BCH
	clr	a
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:147: sync_delay();
	lcall	_sync_delay
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:148: EP0BCL = ptr_setupdat[wLL];
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:149: sync_delay();
	lcall	_sync_delay
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:150: SUDPTRCTL = 0x00;
	mov	dptr,#_SUDPTRCTL
	clr	a
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:151: flagGetDesc = 1;
;	assignBit
	setb	_flagGetDesc
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:152: return;
	ret
00112$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:155: if (ptr_dat[wVH] == 0x02)// дескриптор configuration
	cjne	r7,#0x02,00117$
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:157: SUDPTRCTL = 0x01;
	mov	dptr,#_SUDPTRCTL
	mov	a,#0x01
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:158: if (ptr_dat[wVL] | ptr_dat[wIH] | ptr_dat[wIL])// проверили на равенство 0
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
	orl	a,r6
	jz	00114$
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:160: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:161: return;// выход с ошибкой
	ret
00114$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:165: SUDPTRL = (unsigned char) configuration0 & 0xff;
	mov	dptr,#_SUDPTRL
	mov	a,#_configuration0
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:166: SUDPTRH =  ((unsigned short) configuration0) >> 8;
	mov	r5,#_configuration0
	mov	r6,#(_configuration0 >> 8)
	mov	dptr,#_SUDPTRH
	mov	a,r6
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:167: flagGetDesc = 1;
;	assignBit
	setb	_flagGetDesc
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:168: return;
	ret
00117$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:171: if (ptr_dat[wVH] == 0x03)
	cjne	r7,#0x03,00130$
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:173: if ((!(ptr_dat[wIH])) && (!(ptr_dat[wIL])))// проверка требования 0-й строки
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:175: SUDPTRL = (unsigned char) string0 & 0xff;
	mov	dptr,#_SUDPTRL
	mov	a,#_string0
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:176: SUDPTRH =  ((unsigned short) string0) >> 8;
	mov	r6,#_string0
	mov	r7,#(_string0 >> 8)
	mov	dptr,#_SUDPTRH
	mov	a,r7
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:177: flagGetDesc = 1;
;	assignBit
	setb	_flagGetDesc
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:178: return;
	ret
00119$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:180: if (ptr_dat[wVL] == 0x01)// строка производителя
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00122$
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:182: SUDPTRL = (unsigned char) string1 & 0xff;
	mov	dptr,#_SUDPTRL
	mov	a,#_string1
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:183: SUDPTRH =  ((unsigned short) string1) >> 8;
	mov	r5,#_string1
	mov	r6,#(_string1 >> 8)
	mov	dptr,#_SUDPTRH
	mov	a,r6
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:184: flagGetDesc = 1;
;	assignBit
	setb	_flagGetDesc
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:185: return;
	ret
00122$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:187: if (ptr_dat[wVL] == 0x02)// строка производителя
	cjne	r7,#0x02,00124$
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:189: SUDPTRL = (unsigned char) string2 & 0xff;
	mov	dptr,#_SUDPTRL
	mov	a,#_string2
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:190: SUDPTRH =  ((unsigned short) string2) >> 8;
	mov	r6,#_string2
	mov	r7,#(_string2 >> 8)
	mov	dptr,#_SUDPTRH
	mov	a,r7
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:191: flagGetDesc = 1;
;	assignBit
	setb	_flagGetDesc
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:192: return;
	ret
00124$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:194: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:195: return;// выход с ошибкой
00130$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:197: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_descriptor'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:199: void set_descriptor (void) {return;}
;	-----------------------------------------
;	 function set_descriptor
;	-----------------------------------------
_set_descriptor:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_configurated'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:200: void get_configurated (void) {return;}
;	-----------------------------------------
;	 function get_configurated
;	-----------------------------------------
_get_configurated:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_configurated'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:201: void set_configurated (void) {return;}
;	-----------------------------------------
;	 function set_configurated
;	-----------------------------------------
_set_configurated:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_interface'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:202: void get_interface (void) {return;}
;	-----------------------------------------
;	 function get_interface
;	-----------------------------------------
_get_interface:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_interface'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:203: void set_interface (void) {return;}
;	-----------------------------------------
;	 function set_interface
;	-----------------------------------------
_set_interface:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'synch_frame'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:204: void synch_frame (void) {return;}
;	-----------------------------------------
;	 function synch_frame
;	-----------------------------------------
_synch_frame:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SUDAV'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:209: void SUDAV (void)
;	-----------------------------------------
;	 function SUDAV
;	-----------------------------------------
_SUDAV:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:212: EXIF &= 0xEF;// снимаем прерывание USB
	anl	_EXIF,#0xef
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:213: USBIRQ = (1<<bSUDAV); // снимаем прерывание sudav
	mov	dptr,#_USBIRQ
	mov	a,#0x01
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:219: ptr_setupdat = (__xdata unsigned char *)setupdat;
	mov	_ptr_setupdat,#0xb8
	mov	(_ptr_setupdat + 1),#0xe6
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:220: for (int i = 0; i < setupdat_size; i++)
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:222: ptr_dat[i] = ptr_setupdat[i];
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:220: for (int i = 0; i < setupdat_size; i++)
	inc	r6
	cjne	r6,#0x00,00114$
	inc	r7
	sjmp	00114$
00101$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:231: flagStallEP0 = 0;// очистили флаг ошибки EP0
;	assignBit
	clr	_flagStallEP0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:233: if (!(ptr_dat[bmR] & 0x60) && (ptr_dat[bR] < 0x0D))// проверяем что требование стандартное и попадает в диапазон стандартных требований (13)
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:236: std_func[ptr_dat[bR]]();// функция обработки требования
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:238: if (flagStallEP0)
	jnb	_flagStallEP0,00103$
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:240: EP0CS = (unsigned char) ((1<<HSNAK) | (1<<STALL));// устанавливаем stall, снимаем snak
	mov	dptr,#_EP0CS
	mov	a,#0x81
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:241: __asm__("reti");
	reti
00103$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:244: EP0CS |= (1<<HSNAK);
	mov	dptr,#_EP0CS
	movx	a,@dptr
	orl	acc,#0x80
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:247: if (!(ptr_dat[bmR] & 0x80))// если направление OUT
	mov	dpl,_ptr_dat
	mov	dph,(_ptr_dat + 1)
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00105$
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:249: __asm__("reti");
	reti
00105$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:252: if (flagGetDesc)// если надо передать дескриптор с помощью системы автоматической передачи дескрипторов (адреса мы прописали в подпрограмме)
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:254: flagGetDesc = 0;
;	assignBit
	jbc	_flagGetDesc,00155$
	sjmp	00107$
00155$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:255: __asm__("reti");
	reti
	sjmp	00111$
00107$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:259: sync_delay();
	lcall	_sync_delay
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:260: EP0BCH = ptr_dat[wLH];
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:261: sync_delay();
	lcall	_sync_delay
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:262: EP0BCL = ptr_dat[wLL];
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:263: sync_delay();
	lcall	_sync_delay
	sjmp	00111$
00110$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:270: flagStallEP0 = 1;
;	assignBit
	setb	_flagStallEP0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:271: EP0CS = (unsigned char) ((1<<HSNAK) | (1<<STALL));// устанавливаем stall, снимаем snak
	mov	dptr,#_EP0CS
	mov	a,#0x81
	movx	@dptr,a
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:272: __asm__("reti");
	reti
00111$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:274: __asm__("reti");
	reti
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:275: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SOF'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:276: void SOF (void) {}
;	-----------------------------------------
;	 function SOF
;	-----------------------------------------
_SOF:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SUTOC'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:277: void SUTOC (void) {}
;	-----------------------------------------
;	 function SUTOC
;	-----------------------------------------
_SUTOC:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SUSPEND'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:278: void SUSPEND (void) {}
;	-----------------------------------------
;	 function SUSPEND
;	-----------------------------------------
_SUSPEND:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_RESET'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:279: void USB_RESET (void) {}
;	-----------------------------------------
;	 function USB_RESET
;	-----------------------------------------
_USB_RESET:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HISPEED'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:280: void HISPEED (void) {}
;	-----------------------------------------
;	 function HISPEED
;	-----------------------------------------
_HISPEED:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0ACK'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:281: void EP0ACK (void) {}
;	-----------------------------------------
;	 function EP0ACK
;	-----------------------------------------
_EP0ACK:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_reserved_'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:282: void _reserved_ (void) {}
;	-----------------------------------------
;	 function _reserved_
;	-----------------------------------------
__reserved_:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0IN'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:283: void EP0IN (void) {}
;	-----------------------------------------
;	 function EP0IN
;	-----------------------------------------
_EP0IN:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0OUT'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:284: void EP0OUT (void) {}
;	-----------------------------------------
;	 function EP0OUT
;	-----------------------------------------
_EP0OUT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1IN'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:285: void EP1IN (void) {}
;	-----------------------------------------
;	 function EP1IN
;	-----------------------------------------
_EP1IN:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1OUT'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:286: void EP1OUT (void) {}
;	-----------------------------------------
;	 function EP1OUT
;	-----------------------------------------
_EP1OUT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP2'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:287: void EP2 (void) {}
;	-----------------------------------------
;	 function EP2
;	-----------------------------------------
_EP2:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP4'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:288: void EP4 (void) {}
;	-----------------------------------------
;	 function EP4
;	-----------------------------------------
_EP4:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP6'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:289: void EP6 (void) {}
;	-----------------------------------------
;	 function EP6
;	-----------------------------------------
_EP6:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP8'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:290: void EP8 (void) {}
;	-----------------------------------------
;	 function EP8
;	-----------------------------------------
_EP8:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IBN'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:291: void IBN (void) {}
;	-----------------------------------------
;	 function IBN
;	-----------------------------------------
_IBN:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_reserved2_'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:292: void _reserved2_ (void) {}
;	-----------------------------------------
;	 function _reserved2_
;	-----------------------------------------
__reserved2_:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP0PING'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:293: void EP0PING (void) {}
;	-----------------------------------------
;	 function EP0PING
;	-----------------------------------------
_EP0PING:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP1PING'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:294: void EP1PING (void) {}
;	-----------------------------------------
;	 function EP1PING
;	-----------------------------------------
_EP1PING:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP2PING'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:295: void EP2PING (void) {}
;	-----------------------------------------
;	 function EP2PING
;	-----------------------------------------
_EP2PING:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP4PING'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:296: void EP4PING (void) {}
;	-----------------------------------------
;	 function EP4PING
;	-----------------------------------------
_EP4PING:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP6PING'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:297: void EP6PING (void) {}
;	-----------------------------------------
;	 function EP6PING
;	-----------------------------------------
_EP6PING:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP8PING'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:298: void EP8PING (void) {}
;	-----------------------------------------
;	 function EP8PING
;	-----------------------------------------
_EP8PING:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ERRLIMIT'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:299: void ERRLIMIT (void) {}
;	-----------------------------------------
;	 function ERRLIMIT
;	-----------------------------------------
_ERRLIMIT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_reserved3_'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:300: void _reserved3_ (void) {}
;	-----------------------------------------
;	 function _reserved3_
;	-----------------------------------------
__reserved3_:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_reserved4_'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:301: void _reserved4_ (void) {}
;	-----------------------------------------
;	 function _reserved4_
;	-----------------------------------------
__reserved4_:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_reserved5_'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:302: void _reserved5_ (void) {}
;	-----------------------------------------
;	 function _reserved5_
;	-----------------------------------------
__reserved5_:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP2ISOERR'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:303: void EP2ISOERR (void) {}
;	-----------------------------------------
;	 function EP2ISOERR
;	-----------------------------------------
_EP2ISOERR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP4ISOERR'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:304: void EP4ISOERR (void) {}
;	-----------------------------------------
;	 function EP4ISOERR
;	-----------------------------------------
_EP4ISOERR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP6ISOERR'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:305: void EP6ISOERR (void) {}
;	-----------------------------------------
;	 function EP6ISOERR
;	-----------------------------------------
_EP6ISOERR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EP8ISOERR'
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:306: void EP8ISOERR (void) {}
;	-----------------------------------------
;	 function EP8ISOERR
;	-----------------------------------------
_EP8ISOERR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_byte_uart_9600'
;------------------------------------------------------------
;byte                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:308: void send_byte_uart_9600 (unsigned char byte)
;	-----------------------------------------
;	 function send_byte_uart_9600
;	-----------------------------------------
_send_byte_uart_9600:
	mov	r7,dpl
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:310: TMOD = (0<<TMOD0 | 1<<TMOD1);// 8bit counter0 with auto-reload T0
	mov	_TMOD,#0x02
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:311: CKCON = (0<<CKCON3);// CLK/12
	mov	_CKCON,#0x00
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:312: TH0 = 0x30;// 48 T0
	mov	_TH0,#0x30
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:313: TL0 = 0x00;
	mov	_TL0,#0x00
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:314: PA0 = 0;
;	assignBit
	clr	_PA0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:316: TR0 = 1;// run timer0
;	assignBit
	setb	_TR0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:317: while (!TF0);
00101$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:318: TF0 = 0;
;	assignBit
	jbc	_TF0,00160$
	sjmp	00101$
00160$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:319: for (unsigned char i = 0; i < 8; i++)
	mov	r6,#0x00
00115$:
	cjne	r6,#0x08,00161$
00161$:
	jnc	00107$
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:321: PA0 = ((byte >> i) & 0x01);
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
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:322: while (!TF0);
00104$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:323: TF0 = 0;
;	assignBit
	jbc	_TF0,00165$
	sjmp	00104$
00165$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:319: for (unsigned char i = 0; i < 8; i++)
	inc	r6
	sjmp	00115$
00107$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:325: PA0 = 1;
;	assignBit
	setb	_PA0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:326: while (!TF0);
00108$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:327: TF0 = 0;
;	assignBit
	jbc	_TF0,00166$
	sjmp	00108$
00166$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:328: while (!TF0);
00111$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:329: TF0 = 0;
;	assignBit
	jbc	_TF0,00167$
	sjmp	00111$
00167$:
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:330: TR0 = 0;
;	assignBit
	clr	_TR0
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:331: TH0 = 0;
	mov	_TH0,#0x00
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:332: TL0 = 0;
	mov	_TL0,#0x00
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:333: return;
;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:335: }
	ret
	.area USB_INTERRUPTS(CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
