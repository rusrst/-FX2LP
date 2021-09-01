                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.3 #11868 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module interrupts
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _synch_frame
                                     12 	.globl _set_interface
                                     13 	.globl _get_interface
                                     14 	.globl _set_configurated
                                     15 	.globl _get_configurated
                                     16 	.globl _set_descriptor
                                     17 	.globl _get_descriptor
                                     18 	.globl _set_adr
                                     19 	.globl _set_feature
                                     20 	.globl _reserve
                                     21 	.globl _clear_feature
                                     22 	.globl _get_status
                                     23 	.globl _int6
                                     24 	.globl _int5
                                     25 	.globl _int4
                                     26 	.globl _i2c
                                     27 	.globl _usb
                                     28 	.globl _usart1
                                     29 	.globl _res
                                     30 	.globl _tim2
                                     31 	.globl _usart0
                                     32 	.globl _tim1
                                     33 	.globl _int1
                                     34 	.globl _tim0
                                     35 	.globl _int0
                                     36 	.globl _vectors
                                     37 	.globl _sync_delay
                                     38 	.globl _TF1
                                     39 	.globl _TR1
                                     40 	.globl _TF0
                                     41 	.globl _TR0
                                     42 	.globl _IE1
                                     43 	.globl _IT1
                                     44 	.globl _IE0
                                     45 	.globl _IT0
                                     46 	.globl _EX0
                                     47 	.globl _ET0
                                     48 	.globl _EX1
                                     49 	.globl _ET1
                                     50 	.globl _ES0
                                     51 	.globl _ET2
                                     52 	.globl _ES1
                                     53 	.globl _EA
                                     54 	.globl _PA1
                                     55 	.globl _PA0
                                     56 	.globl _EX6
                                     57 	.globl _EX5
                                     58 	.globl _EX4
                                     59 	.globl _EI2C
                                     60 	.globl _EUSB
                                     61 	.globl _EXIF
                                     62 	.globl _EIE
                                     63 	.globl _ACC
                                     64 	.globl _PSW
                                     65 	.globl _IE
                                     66 	.globl _TH1
                                     67 	.globl _TL1
                                     68 	.globl _TH0
                                     69 	.globl _TL0
                                     70 	.globl _TCON
                                     71 	.globl _CKCON
                                     72 	.globl _TMOD
                                     73 	.globl _IOA
                                     74 	.globl _OEA
                                     75 	.globl _MPAGE
                                     76 	.globl __XPAGE
                                     77 	.globl _EPIRQ
                                     78 	.globl _EPIE
                                     79 	.globl _EP0BCL
                                     80 	.globl _EP0BCH
                                     81 	.globl _SUDPTRL
                                     82 	.globl _SUDPTRH
                                     83 	.globl _SUDPTRCTL
                                     84 	.globl _EP0CS
                                     85 	.globl _USBIRQ
                                     86 	.globl _USBIE
                                     87 	.globl _INTSETUP
                                     88 	.globl _USBCS
                                     89 	.globl _CPUCS
                                     90 	.globl _std_func
                                     91 	.globl _ptr_setupdat
                                     92 	.globl _ptr_descriptor
                                     93 	.globl _ptr_dat
                                     94 	.globl _SUDAV
                                     95 	.globl _SOF
                                     96 	.globl _SUTOC
                                     97 	.globl _SUSPEND
                                     98 	.globl _USB_RESET
                                     99 	.globl _HISPEED
                                    100 	.globl _EP0ACK
                                    101 	.globl __reserved_
                                    102 	.globl _EP0IN
                                    103 	.globl _EP0OUT
                                    104 	.globl _EP1IN
                                    105 	.globl _EP1OUT
                                    106 	.globl _EP2
                                    107 	.globl _EP4
                                    108 	.globl _EP6
                                    109 	.globl _EP8
                                    110 	.globl _IBN
                                    111 	.globl __reserved2_
                                    112 	.globl _EP0PING
                                    113 	.globl _EP1PING
                                    114 	.globl _EP2PING
                                    115 	.globl _EP4PING
                                    116 	.globl _EP6PING
                                    117 	.globl _EP8PING
                                    118 	.globl _ERRLIMIT
                                    119 	.globl __reserved3_
                                    120 	.globl __reserved4_
                                    121 	.globl __reserved5_
                                    122 	.globl _EP2ISOERR
                                    123 	.globl _EP4ISOERR
                                    124 	.globl _EP6ISOERR
                                    125 	.globl _EP8ISOERR
                                    126 	.globl _send_byte_uart_9600
                                    127 ;--------------------------------------------------------
                                    128 ; special function registers
                                    129 ;--------------------------------------------------------
                                    130 	.area RSEG    (ABS,DATA)
      000000                        131 	.org 0x0000
                           000092   132 __XPAGE	=	0x0092
                           000092   133 _MPAGE	=	0x0092
                           0000B2   134 _OEA	=	0x00b2
                           000080   135 _IOA	=	0x0080
                           000089   136 _TMOD	=	0x0089
                           00008E   137 _CKCON	=	0x008e
                           000088   138 _TCON	=	0x0088
                           00008A   139 _TL0	=	0x008a
                           00008C   140 _TH0	=	0x008c
                           00008B   141 _TL1	=	0x008b
                           00008D   142 _TH1	=	0x008d
                           0000A8   143 _IE	=	0x00a8
                           0000D0   144 _PSW	=	0x00d0
                           0000E0   145 _ACC	=	0x00e0
                           0000E8   146 _EIE	=	0x00e8
                           000091   147 _EXIF	=	0x0091
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           0000E8   153 _EUSB	=	0x00e8
                           0000E9   154 _EI2C	=	0x00e9
                           0000EA   155 _EX4	=	0x00ea
                           0000EB   156 _EX5	=	0x00eb
                           0000EC   157 _EX6	=	0x00ec
                           000080   158 _PA0	=	0x0080
                           000081   159 _PA1	=	0x0081
                           0000AF   160 _EA	=	0x00af
                           0000AE   161 _ES1	=	0x00ae
                           0000AD   162 _ET2	=	0x00ad
                           0000AC   163 _ES0	=	0x00ac
                           0000AB   164 _ET1	=	0x00ab
                           0000AA   165 _EX1	=	0x00aa
                           0000A9   166 _ET0	=	0x00a9
                           0000A8   167 _EX0	=	0x00a8
                           000088   168 _IT0	=	0x0088
                           000089   169 _IE0	=	0x0089
                           00008A   170 _IT1	=	0x008a
                           00008B   171 _IE1	=	0x008b
                           00008C   172 _TR0	=	0x008c
                           00008D   173 _TF0	=	0x008d
                           00008E   174 _TR1	=	0x008e
                           00008F   175 _TF1	=	0x008f
                                    176 ;--------------------------------------------------------
                                    177 ; overlayable register banks
                                    178 ;--------------------------------------------------------
                                    179 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        180 	.ds 8
                                    181 ;--------------------------------------------------------
                                    182 ; internal ram data
                                    183 ;--------------------------------------------------------
                                    184 	.area DSEG    (DATA)
      000021                        185 _ptr_dat::
      000021                        186 	.ds 2
      000023                        187 _ptr_descriptor::
      000023                        188 	.ds 2
      000025                        189 _ptr_setupdat::
      000025                        190 	.ds 2
      000027                        191 _std_func::
      000027                        192 	.ds 26
                                    193 ;--------------------------------------------------------
                                    194 ; overlayable items in internal ram 
                                    195 ;--------------------------------------------------------
                                    196 	.area	OSEG    (OVR,DATA)
                                    197 ;--------------------------------------------------------
                                    198 ; indirectly addressable internal ram data
                                    199 ;--------------------------------------------------------
                                    200 	.area ISEG    (DATA)
                                    201 ;--------------------------------------------------------
                                    202 ; absolute internal ram data
                                    203 ;--------------------------------------------------------
                                    204 	.area IABS    (ABS,DATA)
                                    205 	.area IABS    (ABS,DATA)
                                    206 ;--------------------------------------------------------
                                    207 ; bit data
                                    208 ;--------------------------------------------------------
                                    209 	.area BSEG    (BIT)
                                    210 ;--------------------------------------------------------
                                    211 ; paged external ram data
                                    212 ;--------------------------------------------------------
                                    213 	.area PSEG    (PAG,XDATA)
                                    214 ;--------------------------------------------------------
                                    215 ; external ram data
                                    216 ;--------------------------------------------------------
                                    217 	.area XSEG    (XDATA)
                           00E600   218 _CPUCS	=	0xe600
                           00E680   219 _USBCS	=	0xe680
                           00E668   220 _INTSETUP	=	0xe668
                           00E65C   221 _USBIE	=	0xe65c
                           00E65D   222 _USBIRQ	=	0xe65d
                           00E6A0   223 _EP0CS	=	0xe6a0
                           00E6B5   224 _SUDPTRCTL	=	0xe6b5
                           00E6B3   225 _SUDPTRH	=	0xe6b3
                           00E6B4   226 _SUDPTRL	=	0xe6b4
                           00E68A   227 _EP0BCH	=	0xe68a
                           00E68B   228 _EP0BCL	=	0xe68b
                           00E65E   229 _EPIE	=	0xe65e
                           00E65F   230 _EPIRQ	=	0xe65f
                                    231 ;--------------------------------------------------------
                                    232 ; absolute external ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area XABS    (ABS,XDATA)
                                    235 ;--------------------------------------------------------
                                    236 ; external initialized ram data
                                    237 ;--------------------------------------------------------
                                    238 	.area XISEG   (XDATA)
                                    239 	.area HOME    (CODE)
                                    240 	.area GSINIT0 (CODE)
                                    241 	.area GSINIT1 (CODE)
                                    242 	.area GSINIT2 (CODE)
                                    243 	.area GSINIT3 (CODE)
                                    244 	.area GSINIT4 (CODE)
                                    245 	.area GSINIT5 (CODE)
                                    246 	.area GSINIT  (CODE)
                                    247 	.area GSFINAL (CODE)
                                    248 	.area CSEG    (CODE)
                                    249 ;--------------------------------------------------------
                                    250 ; global & static initialisations
                                    251 ;--------------------------------------------------------
                                    252 	.area HOME    (CODE)
                                    253 	.area GSINIT  (CODE)
                                    254 	.area GSFINAL (CODE)
                                    255 	.area GSINIT  (CODE)
                                    256 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:53: __xdata unsigned char *ptr_dat = (__xdata unsigned char *) xdata_temp;// указатель набуфер
      0000C4 75 21 00         [24]  257 	mov	_ptr_dat,#0x00
      0000C7 75 22 E1         [24]  258 	mov	(_ptr_dat + 1),#0xe1
                                    259 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:206: void (*std_func[13]) (void) = {get_status, clear_feature, reserve, set_feature, reserve, set_adr, get_descriptor,
      0000CA 75 27 19         [24]  260 	mov	(_std_func + 0),#_get_status
      0000CD 75 28 20         [24]  261 	mov	(_std_func + 1),#(_get_status >> 8)
      0000D0 75 29 1A         [24]  262 	mov	((_std_func + 0x0002) + 0),#_clear_feature
      0000D3 75 2A 20         [24]  263 	mov	((_std_func + 0x0002) + 1),#(_clear_feature >> 8)
      0000D6 75 2B 1B         [24]  264 	mov	((_std_func + 0x0004) + 0),#_reserve
      0000D9 75 2C 20         [24]  265 	mov	((_std_func + 0x0004) + 1),#(_reserve >> 8)
      0000DC 75 2D 1E         [24]  266 	mov	((_std_func + 0x0006) + 0),#_set_feature
      0000DF 75 2E 20         [24]  267 	mov	((_std_func + 0x0006) + 1),#(_set_feature >> 8)
      0000E2 75 2F 1B         [24]  268 	mov	((_std_func + 0x0008) + 0),#_reserve
      0000E5 75 30 20         [24]  269 	mov	((_std_func + 0x0008) + 1),#(_reserve >> 8)
      0000E8 75 31 1F         [24]  270 	mov	((_std_func + 0x000a) + 0),#_set_adr
      0000EB 75 32 20         [24]  271 	mov	((_std_func + 0x000a) + 1),#(_set_adr >> 8)
      0000EE 75 33 20         [24]  272 	mov	((_std_func + 0x000c) + 0),#_get_descriptor
      0000F1 75 34 20         [24]  273 	mov	((_std_func + 0x000c) + 1),#(_get_descriptor >> 8)
      0000F4 75 35 7E         [24]  274 	mov	((_std_func + 0x000e) + 0),#_set_descriptor
      0000F7 75 36 21         [24]  275 	mov	((_std_func + 0x000e) + 1),#(_set_descriptor >> 8)
      0000FA 75 37 7F         [24]  276 	mov	((_std_func + 0x0010) + 0),#_get_configurated
      0000FD 75 38 21         [24]  277 	mov	((_std_func + 0x0010) + 1),#(_get_configurated >> 8)
      000100 75 39 80         [24]  278 	mov	((_std_func + 0x0012) + 0),#_set_configurated
      000103 75 3A 21         [24]  279 	mov	((_std_func + 0x0012) + 1),#(_set_configurated >> 8)
      000106 75 3B 81         [24]  280 	mov	((_std_func + 0x0014) + 0),#_get_interface
      000109 75 3C 21         [24]  281 	mov	((_std_func + 0x0014) + 1),#(_get_interface >> 8)
      00010C 75 3D 82         [24]  282 	mov	((_std_func + 0x0016) + 0),#_set_interface
      00010F 75 3E 21         [24]  283 	mov	((_std_func + 0x0016) + 1),#(_set_interface >> 8)
      000112 75 3F 83         [24]  284 	mov	((_std_func + 0x0018) + 0),#_synch_frame
      000115 75 40 21         [24]  285 	mov	((_std_func + 0x0018) + 1),#(_synch_frame >> 8)
                                    286 ;--------------------------------------------------------
                                    287 ; Home
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
                                    290 	.area HOME    (CODE)
                                    291 ;--------------------------------------------------------
                                    292 ; code
                                    293 ;--------------------------------------------------------
                                    294 	.area USB_INTERRUPTS(CODE)
                                    295 ;------------------------------------------------------------
                                    296 ;Allocation info for local variables in function 'vectors'
                                    297 ;------------------------------------------------------------
                                    298 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:71: volatile void vectors (void) __naked
                                    299 ;	-----------------------------------------
                                    300 ;	 function vectors
                                    301 ;	-----------------------------------------
      002000                        302 _vectors:
                                    303 ;	naked function: no prologue.
                                    304 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:82: __endasm;
      002000 02 21 84         [24]  305 	ljmp	_SUDAV
      002003 00               [12]  306 	nop
      002004 02 22 59         [24]  307 	ljmp	_SOF
      002007 00               [12]  308 	nop
      002008 02 22 5A         [24]  309 	ljmp	_SUTOC
      00200B 00               [12]  310 	nop
                                    311 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:83: }
                                    312 ;	naked function: no epilogue.
                                    313 ;------------------------------------------------------------
                                    314 ;Allocation info for local variables in function 'int0'
                                    315 ;------------------------------------------------------------
                                    316 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:89: void int0 (void) __interrupt (0) {}
                                    317 ;	-----------------------------------------
                                    318 ;	 function int0
                                    319 ;	-----------------------------------------
      00200C                        320 _int0:
                           000007   321 	ar7 = 0x07
                           000006   322 	ar6 = 0x06
                           000005   323 	ar5 = 0x05
                           000004   324 	ar4 = 0x04
                           000003   325 	ar3 = 0x03
                           000002   326 	ar2 = 0x02
                           000001   327 	ar1 = 0x01
                           000000   328 	ar0 = 0x00
      00200C 32               [24]  329 	reti
                                    330 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    331 ;	eliminated unneeded push/pop not_psw
                                    332 ;	eliminated unneeded push/pop dpl
                                    333 ;	eliminated unneeded push/pop dph
                                    334 ;	eliminated unneeded push/pop b
                                    335 ;	eliminated unneeded push/pop acc
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'tim0'
                                    338 ;------------------------------------------------------------
                                    339 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:90: void tim0 (void) __interrupt (1) {}
                                    340 ;	-----------------------------------------
                                    341 ;	 function tim0
                                    342 ;	-----------------------------------------
      00200D                        343 _tim0:
      00200D 32               [24]  344 	reti
                                    345 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    346 ;	eliminated unneeded push/pop not_psw
                                    347 ;	eliminated unneeded push/pop dpl
                                    348 ;	eliminated unneeded push/pop dph
                                    349 ;	eliminated unneeded push/pop b
                                    350 ;	eliminated unneeded push/pop acc
                                    351 ;------------------------------------------------------------
                                    352 ;Allocation info for local variables in function 'int1'
                                    353 ;------------------------------------------------------------
                                    354 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:91: void int1 (void) __interrupt (2) {}
                                    355 ;	-----------------------------------------
                                    356 ;	 function int1
                                    357 ;	-----------------------------------------
      00200E                        358 _int1:
      00200E 32               [24]  359 	reti
                                    360 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    361 ;	eliminated unneeded push/pop not_psw
                                    362 ;	eliminated unneeded push/pop dpl
                                    363 ;	eliminated unneeded push/pop dph
                                    364 ;	eliminated unneeded push/pop b
                                    365 ;	eliminated unneeded push/pop acc
                                    366 ;------------------------------------------------------------
                                    367 ;Allocation info for local variables in function 'tim1'
                                    368 ;------------------------------------------------------------
                                    369 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:92: void tim1 (void) __interrupt (3) {}
                                    370 ;	-----------------------------------------
                                    371 ;	 function tim1
                                    372 ;	-----------------------------------------
      00200F                        373 _tim1:
      00200F 32               [24]  374 	reti
                                    375 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    376 ;	eliminated unneeded push/pop not_psw
                                    377 ;	eliminated unneeded push/pop dpl
                                    378 ;	eliminated unneeded push/pop dph
                                    379 ;	eliminated unneeded push/pop b
                                    380 ;	eliminated unneeded push/pop acc
                                    381 ;------------------------------------------------------------
                                    382 ;Allocation info for local variables in function 'usart0'
                                    383 ;------------------------------------------------------------
                                    384 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:93: void usart0 (void) __interrupt (4) {}
                                    385 ;	-----------------------------------------
                                    386 ;	 function usart0
                                    387 ;	-----------------------------------------
      002010                        388 _usart0:
      002010 32               [24]  389 	reti
                                    390 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    391 ;	eliminated unneeded push/pop not_psw
                                    392 ;	eliminated unneeded push/pop dpl
                                    393 ;	eliminated unneeded push/pop dph
                                    394 ;	eliminated unneeded push/pop b
                                    395 ;	eliminated unneeded push/pop acc
                                    396 ;------------------------------------------------------------
                                    397 ;Allocation info for local variables in function 'tim2'
                                    398 ;------------------------------------------------------------
                                    399 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:94: void tim2 (void) __interrupt (5) {}
                                    400 ;	-----------------------------------------
                                    401 ;	 function tim2
                                    402 ;	-----------------------------------------
      002011                        403 _tim2:
      002011 32               [24]  404 	reti
                                    405 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    406 ;	eliminated unneeded push/pop not_psw
                                    407 ;	eliminated unneeded push/pop dpl
                                    408 ;	eliminated unneeded push/pop dph
                                    409 ;	eliminated unneeded push/pop b
                                    410 ;	eliminated unneeded push/pop acc
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'res'
                                    413 ;------------------------------------------------------------
                                    414 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:95: void res (void) __interrupt (6) {}
                                    415 ;	-----------------------------------------
                                    416 ;	 function res
                                    417 ;	-----------------------------------------
      002012                        418 _res:
      002012 32               [24]  419 	reti
                                    420 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    421 ;	eliminated unneeded push/pop not_psw
                                    422 ;	eliminated unneeded push/pop dpl
                                    423 ;	eliminated unneeded push/pop dph
                                    424 ;	eliminated unneeded push/pop b
                                    425 ;	eliminated unneeded push/pop acc
                                    426 ;------------------------------------------------------------
                                    427 ;Allocation info for local variables in function 'usart1'
                                    428 ;------------------------------------------------------------
                                    429 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:96: void usart1 (void) __interrupt (7) {}
                                    430 ;	-----------------------------------------
                                    431 ;	 function usart1
                                    432 ;	-----------------------------------------
      002013                        433 _usart1:
      002013 32               [24]  434 	reti
                                    435 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    436 ;	eliminated unneeded push/pop not_psw
                                    437 ;	eliminated unneeded push/pop dpl
                                    438 ;	eliminated unneeded push/pop dph
                                    439 ;	eliminated unneeded push/pop b
                                    440 ;	eliminated unneeded push/pop acc
                                    441 ;------------------------------------------------------------
                                    442 ;Allocation info for local variables in function 'usb'
                                    443 ;------------------------------------------------------------
                                    444 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:97: void usb (void) __interrupt (8) {}
                                    445 ;	-----------------------------------------
                                    446 ;	 function usb
                                    447 ;	-----------------------------------------
      002014                        448 _usb:
      002014 32               [24]  449 	reti
                                    450 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    451 ;	eliminated unneeded push/pop not_psw
                                    452 ;	eliminated unneeded push/pop dpl
                                    453 ;	eliminated unneeded push/pop dph
                                    454 ;	eliminated unneeded push/pop b
                                    455 ;	eliminated unneeded push/pop acc
                                    456 ;------------------------------------------------------------
                                    457 ;Allocation info for local variables in function 'i2c'
                                    458 ;------------------------------------------------------------
                                    459 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:98: void i2c (void) __interrupt (9) {}
                                    460 ;	-----------------------------------------
                                    461 ;	 function i2c
                                    462 ;	-----------------------------------------
      002015                        463 _i2c:
      002015 32               [24]  464 	reti
                                    465 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    466 ;	eliminated unneeded push/pop not_psw
                                    467 ;	eliminated unneeded push/pop dpl
                                    468 ;	eliminated unneeded push/pop dph
                                    469 ;	eliminated unneeded push/pop b
                                    470 ;	eliminated unneeded push/pop acc
                                    471 ;------------------------------------------------------------
                                    472 ;Allocation info for local variables in function 'int4'
                                    473 ;------------------------------------------------------------
                                    474 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:99: void int4 (void) __interrupt (10) {}
                                    475 ;	-----------------------------------------
                                    476 ;	 function int4
                                    477 ;	-----------------------------------------
      002016                        478 _int4:
      002016 32               [24]  479 	reti
                                    480 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    481 ;	eliminated unneeded push/pop not_psw
                                    482 ;	eliminated unneeded push/pop dpl
                                    483 ;	eliminated unneeded push/pop dph
                                    484 ;	eliminated unneeded push/pop b
                                    485 ;	eliminated unneeded push/pop acc
                                    486 ;------------------------------------------------------------
                                    487 ;Allocation info for local variables in function 'int5'
                                    488 ;------------------------------------------------------------
                                    489 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:100: void int5 (void) __interrupt (11) {}
                                    490 ;	-----------------------------------------
                                    491 ;	 function int5
                                    492 ;	-----------------------------------------
      002017                        493 _int5:
      002017 32               [24]  494 	reti
                                    495 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    496 ;	eliminated unneeded push/pop not_psw
                                    497 ;	eliminated unneeded push/pop dpl
                                    498 ;	eliminated unneeded push/pop dph
                                    499 ;	eliminated unneeded push/pop b
                                    500 ;	eliminated unneeded push/pop acc
                                    501 ;------------------------------------------------------------
                                    502 ;Allocation info for local variables in function 'int6'
                                    503 ;------------------------------------------------------------
                                    504 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:101: void int6 (void) __interrupt (12) {}
                                    505 ;	-----------------------------------------
                                    506 ;	 function int6
                                    507 ;	-----------------------------------------
      002018                        508 _int6:
      002018 32               [24]  509 	reti
                                    510 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    511 ;	eliminated unneeded push/pop not_psw
                                    512 ;	eliminated unneeded push/pop dpl
                                    513 ;	eliminated unneeded push/pop dph
                                    514 ;	eliminated unneeded push/pop b
                                    515 ;	eliminated unneeded push/pop acc
                                    516 ;------------------------------------------------------------
                                    517 ;Allocation info for local variables in function 'get_status'
                                    518 ;------------------------------------------------------------
                                    519 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:103: void get_status (void) {
                                    520 ;	-----------------------------------------
                                    521 ;	 function get_status
                                    522 ;	-----------------------------------------
      002019                        523 _get_status:
                                    524 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:104: return;}
      002019 22               [24]  525 	ret
                                    526 ;------------------------------------------------------------
                                    527 ;Allocation info for local variables in function 'clear_feature'
                                    528 ;------------------------------------------------------------
                                    529 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:105: void clear_feature (void) {
                                    530 ;	-----------------------------------------
                                    531 ;	 function clear_feature
                                    532 ;	-----------------------------------------
      00201A                        533 _clear_feature:
                                    534 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:106: return;}
      00201A 22               [24]  535 	ret
                                    536 ;------------------------------------------------------------
                                    537 ;Allocation info for local variables in function 'reserve'
                                    538 ;------------------------------------------------------------
                                    539 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:107: void reserve (void)
                                    540 ;	-----------------------------------------
                                    541 ;	 function reserve
                                    542 ;	-----------------------------------------
      00201B                        543 _reserve:
                                    544 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:109: flagStallEP0 = 1;
                                    545 ;	assignBit
      00201B D2 00            [12]  546 	setb	_flagStallEP0
                                    547 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:110: return;
                                    548 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:111: }
      00201D 22               [24]  549 	ret
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'set_feature'
                                    552 ;------------------------------------------------------------
                                    553 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:112: void set_feature (void) {
                                    554 ;	-----------------------------------------
                                    555 ;	 function set_feature
                                    556 ;	-----------------------------------------
      00201E                        557 _set_feature:
                                    558 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:113: return;}
      00201E 22               [24]  559 	ret
                                    560 ;------------------------------------------------------------
                                    561 ;Allocation info for local variables in function 'set_adr'
                                    562 ;------------------------------------------------------------
                                    563 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:114: void set_adr (void) {
                                    564 ;	-----------------------------------------
                                    565 ;	 function set_adr
                                    566 ;	-----------------------------------------
      00201F                        567 _set_adr:
                                    568 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:115: return;}
      00201F 22               [24]  569 	ret
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'get_descriptor'
                                    572 ;------------------------------------------------------------
                                    573 ;pData                     Allocated to registers 
                                    574 ;i                         Allocated to registers r6 
                                    575 ;------------------------------------------------------------
                                    576 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:116: void get_descriptor (void)
                                    577 ;	-----------------------------------------
                                    578 ;	 function get_descriptor
                                    579 ;	-----------------------------------------
      002020                        580 _get_descriptor:
                                    581 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:118: if (ptr_dat[bmR] != 0x80)// проверка типа запроса, что запрос типа in
      002020 85 21 82         [24]  582 	mov	dpl,_ptr_dat
      002023 85 22 83         [24]  583 	mov	dph,(_ptr_dat + 1)
      002026 E0               [24]  584 	movx	a,@dptr
      002027 FF               [12]  585 	mov	r7,a
      002028 BF 80 02         [24]  586 	cjne	r7,#0x80,00193$
      00202B 80 03            [24]  587 	sjmp	00102$
      00202D                        588 00193$:
                                    589 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:120: flagStallEP0 = 1;
                                    590 ;	assignBit
      00202D D2 00            [12]  591 	setb	_flagStallEP0
                                    592 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:121: return;// выход с ошибкой
      00202F 22               [24]  593 	ret
      002030                        594 00102$:
                                    595 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:123: if ((ptr_dat[wVH] != 0x01) && (ptr_dat[wVH] != 0x02) && (ptr_dat[wVH] != 0x03))// проверка на get descriptor
      002030 85 21 82         [24]  596 	mov	dpl,_ptr_dat
      002033 85 22 83         [24]  597 	mov	dph,(_ptr_dat + 1)
      002036 A3               [24]  598 	inc	dptr
      002037 A3               [24]  599 	inc	dptr
      002038 A3               [24]  600 	inc	dptr
      002039 E0               [24]  601 	movx	a,@dptr
      00203A FF               [12]  602 	mov	r7,a
      00203B BF 01 02         [24]  603 	cjne	r7,#0x01,00194$
      00203E 80 0D            [24]  604 	sjmp	00104$
      002040                        605 00194$:
      002040 BF 02 02         [24]  606 	cjne	r7,#0x02,00195$
      002043 80 08            [24]  607 	sjmp	00104$
      002045                        608 00195$:
      002045 BF 03 02         [24]  609 	cjne	r7,#0x03,00196$
      002048 80 03            [24]  610 	sjmp	00104$
      00204A                        611 00196$:
                                    612 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:125: flagStallEP0 = 1;
                                    613 ;	assignBit
      00204A D2 00            [12]  614 	setb	_flagStallEP0
                                    615 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:126: return;// выход с ошибкой
      00204C 22               [24]  616 	ret
      00204D                        617 00104$:
                                    618 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:128: if (ptr_dat[wVH] == 0x01)// дескриптор device
      00204D BF 01 02         [24]  619 	cjne	r7,#0x01,00197$
      002050 80 02            [24]  620 	sjmp	00198$
      002052                        621 00197$:
      002052 80 7A            [24]  622 	sjmp	00112$
      002054                        623 00198$:
                                    624 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:130: if ((ptr_dat[wVL] | ptr_dat[wIL] | ptr_dat[wIH]))// проверка на корректный формат требований
      002054 85 21 82         [24]  625 	mov	dpl,_ptr_dat
      002057 85 22 83         [24]  626 	mov	dph,(_ptr_dat + 1)
      00205A A3               [24]  627 	inc	dptr
      00205B A3               [24]  628 	inc	dptr
      00205C E0               [24]  629 	movx	a,@dptr
      00205D FE               [12]  630 	mov	r6,a
      00205E 85 21 82         [24]  631 	mov	dpl,_ptr_dat
      002061 85 22 83         [24]  632 	mov	dph,(_ptr_dat + 1)
      002064 A3               [24]  633 	inc	dptr
      002065 A3               [24]  634 	inc	dptr
      002066 A3               [24]  635 	inc	dptr
      002067 A3               [24]  636 	inc	dptr
      002068 E0               [24]  637 	movx	a,@dptr
      002069 42 06            [12]  638 	orl	ar6,a
      00206B 85 21 82         [24]  639 	mov	dpl,_ptr_dat
      00206E 85 22 83         [24]  640 	mov	dph,(_ptr_dat + 1)
      002071 A3               [24]  641 	inc	dptr
      002072 A3               [24]  642 	inc	dptr
      002073 A3               [24]  643 	inc	dptr
      002074 A3               [24]  644 	inc	dptr
      002075 A3               [24]  645 	inc	dptr
      002076 E0               [24]  646 	movx	a,@dptr
      002077 FD               [12]  647 	mov	r5,a
      002078 4E               [12]  648 	orl	a,r6
      002079 60 03            [24]  649 	jz	00109$
                                    650 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:132: flagStallEP0 = 1;
                                    651 ;	assignBit
      00207B D2 00            [12]  652 	setb	_flagStallEP0
                                    653 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:133: return;// выход с ошибкой
      00207D 22               [24]  654 	ret
      00207E                        655 00109$:
                                    656 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:138: SUDPTRCTL = 0x01;// должна быть 1 даже для ручной передачи дескрипторов (page 331)
      00207E 90 E6 B5         [24]  657 	mov	dptr,#_SUDPTRCTL
      002081 74 01            [12]  658 	mov	a,#0x01
      002083 F0               [24]  659 	movx	@dptr,a
                                    660 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:141: for (unsigned char i = 0; i < descr[0]; i++)// переписываем дескриптор в ep0buf
      002084 7E 00            [12]  661 	mov	r6,#0x00
      002086                        662 00128$:
      002086 90 10 00         [24]  663 	mov	dptr,#_descr
      002089 E4               [12]  664 	clr	a
      00208A 93               [24]  665 	movc	a,@a+dptr
      00208B FD               [12]  666 	mov	r5,a
      00208C C3               [12]  667 	clr	c
      00208D EE               [12]  668 	mov	a,r6
      00208E 9D               [12]  669 	subb	a,r5
      00208F 50 16            [24]  670 	jnc	00107$
                                    671 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:143: pData[i] = descr[i];
      002091 74 40            [12]  672 	mov	a,#0x40
      002093 2E               [12]  673 	add	a,r6
      002094 FC               [12]  674 	mov	r4,a
      002095 E4               [12]  675 	clr	a
      002096 34 E7            [12]  676 	addc	a,#0xe7
      002098 FD               [12]  677 	mov	r5,a
      002099 EE               [12]  678 	mov	a,r6
      00209A 90 10 00         [24]  679 	mov	dptr,#_descr
      00209D 93               [24]  680 	movc	a,@a+dptr
      00209E FB               [12]  681 	mov	r3,a
      00209F 8C 82            [24]  682 	mov	dpl,r4
      0020A1 8D 83            [24]  683 	mov	dph,r5
      0020A3 F0               [24]  684 	movx	@dptr,a
                                    685 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:141: for (unsigned char i = 0; i < descr[0]; i++)// переписываем дескриптор в ep0buf
      0020A4 0E               [12]  686 	inc	r6
      0020A5 80 DF            [24]  687 	sjmp	00128$
      0020A7                        688 00107$:
                                    689 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:145: sync_delay();
      0020A7 12 01 1B         [24]  690 	lcall	_sync_delay
                                    691 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:146: EP0BCH = 0x00;
      0020AA 90 E6 8A         [24]  692 	mov	dptr,#_EP0BCH
      0020AD E4               [12]  693 	clr	a
      0020AE F0               [24]  694 	movx	@dptr,a
                                    695 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:147: sync_delay();
      0020AF 12 01 1B         [24]  696 	lcall	_sync_delay
                                    697 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:148: EP0BCL = ptr_setupdat[wLL];
      0020B2 85 25 82         [24]  698 	mov	dpl,_ptr_setupdat
      0020B5 85 26 83         [24]  699 	mov	dph,(_ptr_setupdat + 1)
      0020B8 A3               [24]  700 	inc	dptr
      0020B9 A3               [24]  701 	inc	dptr
      0020BA A3               [24]  702 	inc	dptr
      0020BB A3               [24]  703 	inc	dptr
      0020BC A3               [24]  704 	inc	dptr
      0020BD A3               [24]  705 	inc	dptr
      0020BE E0               [24]  706 	movx	a,@dptr
      0020BF 90 E6 8B         [24]  707 	mov	dptr,#_EP0BCL
      0020C2 F0               [24]  708 	movx	@dptr,a
                                    709 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:149: sync_delay();
      0020C3 12 01 1B         [24]  710 	lcall	_sync_delay
                                    711 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:150: SUDPTRCTL = 0x00;
      0020C6 90 E6 B5         [24]  712 	mov	dptr,#_SUDPTRCTL
      0020C9 E4               [12]  713 	clr	a
      0020CA F0               [24]  714 	movx	@dptr,a
                                    715 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:151: flagGetDesc = 1;
                                    716 ;	assignBit
      0020CB D2 01            [12]  717 	setb	_flagGetDesc
                                    718 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:152: return;
      0020CD 22               [24]  719 	ret
      0020CE                        720 00112$:
                                    721 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:155: if (ptr_dat[wVH] == 0x02)// дескриптор configuration
      0020CE BF 02 41         [24]  722 	cjne	r7,#0x02,00117$
                                    723 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:157: SUDPTRCTL = 0x01;
      0020D1 90 E6 B5         [24]  724 	mov	dptr,#_SUDPTRCTL
      0020D4 74 01            [12]  725 	mov	a,#0x01
      0020D6 F0               [24]  726 	movx	@dptr,a
                                    727 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:158: if (ptr_dat[wVL] | ptr_dat[wIH] | ptr_dat[wIL])// проверили на равенство 0
      0020D7 85 21 82         [24]  728 	mov	dpl,_ptr_dat
      0020DA 85 22 83         [24]  729 	mov	dph,(_ptr_dat + 1)
      0020DD A3               [24]  730 	inc	dptr
      0020DE A3               [24]  731 	inc	dptr
      0020DF E0               [24]  732 	movx	a,@dptr
      0020E0 FE               [12]  733 	mov	r6,a
      0020E1 85 21 82         [24]  734 	mov	dpl,_ptr_dat
      0020E4 85 22 83         [24]  735 	mov	dph,(_ptr_dat + 1)
      0020E7 A3               [24]  736 	inc	dptr
      0020E8 A3               [24]  737 	inc	dptr
      0020E9 A3               [24]  738 	inc	dptr
      0020EA A3               [24]  739 	inc	dptr
      0020EB A3               [24]  740 	inc	dptr
      0020EC E0               [24]  741 	movx	a,@dptr
      0020ED 42 06            [12]  742 	orl	ar6,a
      0020EF 85 21 82         [24]  743 	mov	dpl,_ptr_dat
      0020F2 85 22 83         [24]  744 	mov	dph,(_ptr_dat + 1)
      0020F5 A3               [24]  745 	inc	dptr
      0020F6 A3               [24]  746 	inc	dptr
      0020F7 A3               [24]  747 	inc	dptr
      0020F8 A3               [24]  748 	inc	dptr
      0020F9 E0               [24]  749 	movx	a,@dptr
      0020FA 4E               [12]  750 	orl	a,r6
      0020FB 60 03            [24]  751 	jz	00114$
                                    752 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:160: flagStallEP0 = 1;
                                    753 ;	assignBit
      0020FD D2 00            [12]  754 	setb	_flagStallEP0
                                    755 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:161: return;// выход с ошибкой
      0020FF 22               [24]  756 	ret
      002100                        757 00114$:
                                    758 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:165: SUDPTRL = (unsigned char) configuration0 & 0xff;
      002100 90 E6 B4         [24]  759 	mov	dptr,#_SUDPTRL
      002103 74 12            [12]  760 	mov	a,#_configuration0
      002105 F0               [24]  761 	movx	@dptr,a
                                    762 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:166: SUDPTRH =  ((unsigned short) configuration0) >> 8;
      002106 7D 12            [12]  763 	mov	r5,#_configuration0
      002108 7E 10            [12]  764 	mov	r6,#(_configuration0 >> 8)
      00210A 90 E6 B3         [24]  765 	mov	dptr,#_SUDPTRH
      00210D EE               [12]  766 	mov	a,r6
      00210E F0               [24]  767 	movx	@dptr,a
                                    768 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:167: flagGetDesc = 1;
                                    769 ;	assignBit
      00210F D2 01            [12]  770 	setb	_flagGetDesc
                                    771 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:168: return;
      002111 22               [24]  772 	ret
      002112                        773 00117$:
                                    774 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:171: if (ptr_dat[wVH] == 0x03)
      002112 BF 03 68         [24]  775 	cjne	r7,#0x03,00130$
                                    776 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:173: if ((!(ptr_dat[wIH])) && (!(ptr_dat[wIL])))// проверка требования 0-й строки
      002115 74 05            [12]  777 	mov	a,#0x05
      002117 25 21            [12]  778 	add	a,_ptr_dat
      002119 FE               [12]  779 	mov	r6,a
      00211A E4               [12]  780 	clr	a
      00211B 35 22            [12]  781 	addc	a,(_ptr_dat + 1)
      00211D FF               [12]  782 	mov	r7,a
      00211E 8E 82            [24]  783 	mov	dpl,r6
      002120 8F 83            [24]  784 	mov	dph,r7
      002122 E0               [24]  785 	movx	a,@dptr
      002123 70 22            [24]  786 	jnz	00119$
      002125 74 04            [12]  787 	mov	a,#0x04
      002127 25 21            [12]  788 	add	a,_ptr_dat
      002129 FE               [12]  789 	mov	r6,a
      00212A E4               [12]  790 	clr	a
      00212B 35 22            [12]  791 	addc	a,(_ptr_dat + 1)
      00212D FF               [12]  792 	mov	r7,a
      00212E 8E 82            [24]  793 	mov	dpl,r6
      002130 8F 83            [24]  794 	mov	dph,r7
      002132 E0               [24]  795 	movx	a,@dptr
      002133 70 12            [24]  796 	jnz	00119$
                                    797 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:175: SUDPTRL = (unsigned char) string0 & 0xff;
      002135 90 E6 B4         [24]  798 	mov	dptr,#_SUDPTRL
      002138 74 32            [12]  799 	mov	a,#_string0
      00213A F0               [24]  800 	movx	@dptr,a
                                    801 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:176: SUDPTRH =  ((unsigned short) string0) >> 8;
      00213B 7E 32            [12]  802 	mov	r6,#_string0
      00213D 7F 10            [12]  803 	mov	r7,#(_string0 >> 8)
      00213F 90 E6 B3         [24]  804 	mov	dptr,#_SUDPTRH
      002142 EF               [12]  805 	mov	a,r7
      002143 F0               [24]  806 	movx	@dptr,a
                                    807 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:177: flagGetDesc = 1;
                                    808 ;	assignBit
      002144 D2 01            [12]  809 	setb	_flagGetDesc
                                    810 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:178: return;
      002146 22               [24]  811 	ret
      002147                        812 00119$:
                                    813 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:180: if (ptr_dat[wVL] == 0x01)// строка производителя
      002147 85 21 82         [24]  814 	mov	dpl,_ptr_dat
      00214A 85 22 83         [24]  815 	mov	dph,(_ptr_dat + 1)
      00214D A3               [24]  816 	inc	dptr
      00214E A3               [24]  817 	inc	dptr
      00214F E0               [24]  818 	movx	a,@dptr
      002150 FF               [12]  819 	mov	r7,a
      002151 BF 01 12         [24]  820 	cjne	r7,#0x01,00122$
                                    821 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:182: SUDPTRL = (unsigned char) string1 & 0xff;
      002154 90 E6 B4         [24]  822 	mov	dptr,#_SUDPTRL
      002157 74 36            [12]  823 	mov	a,#_string1
      002159 F0               [24]  824 	movx	@dptr,a
                                    825 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:183: SUDPTRH =  ((unsigned short) string1) >> 8;
      00215A 7D 36            [12]  826 	mov	r5,#_string1
      00215C 7E 10            [12]  827 	mov	r6,#(_string1 >> 8)
      00215E 90 E6 B3         [24]  828 	mov	dptr,#_SUDPTRH
      002161 EE               [12]  829 	mov	a,r6
      002162 F0               [24]  830 	movx	@dptr,a
                                    831 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:184: flagGetDesc = 1;
                                    832 ;	assignBit
      002163 D2 01            [12]  833 	setb	_flagGetDesc
                                    834 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:185: return;
      002165 22               [24]  835 	ret
      002166                        836 00122$:
                                    837 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:187: if (ptr_dat[wVL] == 0x02)// строка производителя
      002166 BF 02 12         [24]  838 	cjne	r7,#0x02,00124$
                                    839 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:189: SUDPTRL = (unsigned char) string2 & 0xff;
      002169 90 E6 B4         [24]  840 	mov	dptr,#_SUDPTRL
      00216C 74 42            [12]  841 	mov	a,#_string2
      00216E F0               [24]  842 	movx	@dptr,a
                                    843 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:190: SUDPTRH =  ((unsigned short) string2) >> 8;
      00216F 7E 42            [12]  844 	mov	r6,#_string2
      002171 7F 10            [12]  845 	mov	r7,#(_string2 >> 8)
      002173 90 E6 B3         [24]  846 	mov	dptr,#_SUDPTRH
      002176 EF               [12]  847 	mov	a,r7
      002177 F0               [24]  848 	movx	@dptr,a
                                    849 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:191: flagGetDesc = 1;
                                    850 ;	assignBit
      002178 D2 01            [12]  851 	setb	_flagGetDesc
                                    852 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:192: return;
      00217A 22               [24]  853 	ret
      00217B                        854 00124$:
                                    855 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:194: flagStallEP0 = 1;
                                    856 ;	assignBit
      00217B D2 00            [12]  857 	setb	_flagStallEP0
                                    858 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:195: return;// выход с ошибкой
      00217D                        859 00130$:
                                    860 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:197: }
      00217D 22               [24]  861 	ret
                                    862 ;------------------------------------------------------------
                                    863 ;Allocation info for local variables in function 'set_descriptor'
                                    864 ;------------------------------------------------------------
                                    865 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:199: void set_descriptor (void) {return;}
                                    866 ;	-----------------------------------------
                                    867 ;	 function set_descriptor
                                    868 ;	-----------------------------------------
      00217E                        869 _set_descriptor:
      00217E 22               [24]  870 	ret
                                    871 ;------------------------------------------------------------
                                    872 ;Allocation info for local variables in function 'get_configurated'
                                    873 ;------------------------------------------------------------
                                    874 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:200: void get_configurated (void) {return;}
                                    875 ;	-----------------------------------------
                                    876 ;	 function get_configurated
                                    877 ;	-----------------------------------------
      00217F                        878 _get_configurated:
      00217F 22               [24]  879 	ret
                                    880 ;------------------------------------------------------------
                                    881 ;Allocation info for local variables in function 'set_configurated'
                                    882 ;------------------------------------------------------------
                                    883 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:201: void set_configurated (void) {return;}
                                    884 ;	-----------------------------------------
                                    885 ;	 function set_configurated
                                    886 ;	-----------------------------------------
      002180                        887 _set_configurated:
      002180 22               [24]  888 	ret
                                    889 ;------------------------------------------------------------
                                    890 ;Allocation info for local variables in function 'get_interface'
                                    891 ;------------------------------------------------------------
                                    892 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:202: void get_interface (void) {return;}
                                    893 ;	-----------------------------------------
                                    894 ;	 function get_interface
                                    895 ;	-----------------------------------------
      002181                        896 _get_interface:
      002181 22               [24]  897 	ret
                                    898 ;------------------------------------------------------------
                                    899 ;Allocation info for local variables in function 'set_interface'
                                    900 ;------------------------------------------------------------
                                    901 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:203: void set_interface (void) {return;}
                                    902 ;	-----------------------------------------
                                    903 ;	 function set_interface
                                    904 ;	-----------------------------------------
      002182                        905 _set_interface:
      002182 22               [24]  906 	ret
                                    907 ;------------------------------------------------------------
                                    908 ;Allocation info for local variables in function 'synch_frame'
                                    909 ;------------------------------------------------------------
                                    910 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:204: void synch_frame (void) {return;}
                                    911 ;	-----------------------------------------
                                    912 ;	 function synch_frame
                                    913 ;	-----------------------------------------
      002183                        914 _synch_frame:
      002183 22               [24]  915 	ret
                                    916 ;------------------------------------------------------------
                                    917 ;Allocation info for local variables in function 'SUDAV'
                                    918 ;------------------------------------------------------------
                                    919 ;i                         Allocated to registers r6 r7 
                                    920 ;------------------------------------------------------------
                                    921 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:209: void SUDAV (void)
                                    922 ;	-----------------------------------------
                                    923 ;	 function SUDAV
                                    924 ;	-----------------------------------------
      002184                        925 _SUDAV:
                                    926 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:212: EXIF &= 0xEF;// снимаем прерывание USB
      002184 53 91 EF         [24]  927 	anl	_EXIF,#0xef
                                    928 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:213: USBIRQ = (1<<bSUDAV); // снимаем прерывание sudav
      002187 90 E6 5D         [24]  929 	mov	dptr,#_USBIRQ
      00218A 74 01            [12]  930 	mov	a,#0x01
      00218C F0               [24]  931 	movx	@dptr,a
                                    932 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:219: ptr_setupdat = (__xdata unsigned char *)setupdat;
      00218D 75 25 B8         [24]  933 	mov	_ptr_setupdat,#0xb8
      002190 75 26 E6         [24]  934 	mov	(_ptr_setupdat + 1),#0xe6
                                    935 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:220: for (int i = 0; i < setupdat_size; i++)
      002193 7E 00            [12]  936 	mov	r6,#0x00
      002195 7F 00            [12]  937 	mov	r7,#0x00
      002197                        938 00114$:
      002197 C3               [12]  939 	clr	c
      002198 EE               [12]  940 	mov	a,r6
      002199 94 08            [12]  941 	subb	a,#0x08
      00219B EF               [12]  942 	mov	a,r7
      00219C 64 80            [12]  943 	xrl	a,#0x80
      00219E 94 80            [12]  944 	subb	a,#0x80
      0021A0 50 20            [24]  945 	jnc	00101$
                                    946 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:222: ptr_dat[i] = ptr_setupdat[i];
      0021A2 EE               [12]  947 	mov	a,r6
      0021A3 25 21            [12]  948 	add	a,_ptr_dat
      0021A5 FC               [12]  949 	mov	r4,a
      0021A6 EF               [12]  950 	mov	a,r7
      0021A7 35 22            [12]  951 	addc	a,(_ptr_dat + 1)
      0021A9 FD               [12]  952 	mov	r5,a
      0021AA 74 B8            [12]  953 	mov	a,#0xb8
      0021AC 2E               [12]  954 	add	a,r6
      0021AD F5 82            [12]  955 	mov	dpl,a
      0021AF 74 E6            [12]  956 	mov	a,#0xe6
      0021B1 3F               [12]  957 	addc	a,r7
      0021B2 F5 83            [12]  958 	mov	dph,a
      0021B4 E0               [24]  959 	movx	a,@dptr
      0021B5 FB               [12]  960 	mov	r3,a
      0021B6 8C 82            [24]  961 	mov	dpl,r4
      0021B8 8D 83            [24]  962 	mov	dph,r5
      0021BA F0               [24]  963 	movx	@dptr,a
                                    964 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:220: for (int i = 0; i < setupdat_size; i++)
      0021BB 0E               [12]  965 	inc	r6
      0021BC BE 00 D8         [24]  966 	cjne	r6,#0x00,00114$
      0021BF 0F               [12]  967 	inc	r7
      0021C0 80 D5            [24]  968 	sjmp	00114$
      0021C2                        969 00101$:
                                    970 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:231: flagStallEP0 = 0;// очистили флаг ошибки EP0
                                    971 ;	assignBit
      0021C2 C2 00            [12]  972 	clr	_flagStallEP0
                                    973 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:233: if (!(ptr_dat[bmR] & 0x60) && (ptr_dat[bR] < 0x0D))// проверяем что требование стандартное и попадает в диапазон стандартных требований (13)
      0021C4 85 21 82         [24]  974 	mov	dpl,_ptr_dat
      0021C7 85 22 83         [24]  975 	mov	dph,(_ptr_dat + 1)
      0021CA E0               [24]  976 	movx	a,@dptr
      0021CB FF               [12]  977 	mov	r7,a
      0021CC 54 60            [12]  978 	anl	a,#0x60
      0021CE 60 03            [24]  979 	jz	00150$
      0021D0 02 22 4E         [24]  980 	ljmp	00110$
      0021D3                        981 00150$:
      0021D3 85 21 82         [24]  982 	mov	dpl,_ptr_dat
      0021D6 85 22 83         [24]  983 	mov	dph,(_ptr_dat + 1)
      0021D9 A3               [24]  984 	inc	dptr
      0021DA E0               [24]  985 	movx	a,@dptr
      0021DB FF               [12]  986 	mov	r7,a
      0021DC BF 0D 00         [24]  987 	cjne	r7,#0x0d,00151$
      0021DF                        988 00151$:
      0021DF 50 6D            [24]  989 	jnc	00110$
                                    990 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:236: std_func[ptr_dat[bR]]();// функция обработки требования
      0021E1 EF               [12]  991 	mov	a,r7
      0021E2 2F               [12]  992 	add	a,r7
      0021E3 24 27            [12]  993 	add	a,#_std_func
      0021E5 F9               [12]  994 	mov	r1,a
      0021E6 87 06            [24]  995 	mov	ar6,@r1
      0021E8 09               [12]  996 	inc	r1
      0021E9 87 07            [24]  997 	mov	ar7,@r1
      0021EB C0 07            [24]  998 	push	ar7
      0021ED C0 06            [24]  999 	push	ar6
      0021EF 8E 82            [24] 1000 	mov	dpl,r6
      0021F1 8F 83            [24] 1001 	mov	dph,r7
      0021F3 12 00 69         [24] 1002 	lcall	__sdcc_call_dptr
      0021F6 D0 06            [24] 1003 	pop	ar6
      0021F8 D0 07            [24] 1004 	pop	ar7
                                   1005 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:238: if (flagStallEP0)
      0021FA 30 00 07         [24] 1006 	jnb	_flagStallEP0,00103$
                                   1007 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:240: EP0CS = (unsigned char) ((1<<HSNAK) | (1<<STALL));// устанавливаем stall, снимаем snak
      0021FD 90 E6 A0         [24] 1008 	mov	dptr,#_EP0CS
      002200 74 81            [12] 1009 	mov	a,#0x81
      002202 F0               [24] 1010 	movx	@dptr,a
                                   1011 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:241: __asm__("reti");
      002203 32               [24] 1012 	reti
      002204                       1013 00103$:
                                   1014 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:244: EP0CS |= (1<<HSNAK);
      002204 90 E6 A0         [24] 1015 	mov	dptr,#_EP0CS
      002207 E0               [24] 1016 	movx	a,@dptr
      002208 43 E0 80         [24] 1017 	orl	acc,#0x80
      00220B F0               [24] 1018 	movx	@dptr,a
                                   1019 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:247: if (!(ptr_dat[bmR] & 0x80))// если направление OUT
      00220C 85 21 82         [24] 1020 	mov	dpl,_ptr_dat
      00220F 85 22 83         [24] 1021 	mov	dph,(_ptr_dat + 1)
      002212 E0               [24] 1022 	movx	a,@dptr
      002213 FF               [12] 1023 	mov	r7,a
      002214 20 E7 01         [24] 1024 	jb	acc.7,00105$
                                   1025 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:249: __asm__("reti");
      002217 32               [24] 1026 	reti
      002218                       1027 00105$:
                                   1028 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:252: if (flagGetDesc)// если надо передать дескриптор с помощью системы автоматической передачи дескрипторов (адреса мы прописали в подпрограмме)
                                   1029 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:254: flagGetDesc = 0;
                                   1030 ;	assignBit
      002218 10 01 02         [24] 1031 	jbc	_flagGetDesc,00155$
      00221B 80 03            [24] 1032 	sjmp	00107$
      00221D                       1033 00155$:
                                   1034 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:255: __asm__("reti");
      00221D 32               [24] 1035 	reti
      00221E 80 37            [24] 1036 	sjmp	00111$
      002220                       1037 00107$:
                                   1038 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:259: sync_delay();
      002220 12 01 1B         [24] 1039 	lcall	_sync_delay
                                   1040 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:260: EP0BCH = ptr_dat[wLH];
      002223 85 21 82         [24] 1041 	mov	dpl,_ptr_dat
      002226 85 22 83         [24] 1042 	mov	dph,(_ptr_dat + 1)
      002229 A3               [24] 1043 	inc	dptr
      00222A A3               [24] 1044 	inc	dptr
      00222B A3               [24] 1045 	inc	dptr
      00222C A3               [24] 1046 	inc	dptr
      00222D A3               [24] 1047 	inc	dptr
      00222E A3               [24] 1048 	inc	dptr
      00222F A3               [24] 1049 	inc	dptr
      002230 E0               [24] 1050 	movx	a,@dptr
      002231 90 E6 8A         [24] 1051 	mov	dptr,#_EP0BCH
      002234 F0               [24] 1052 	movx	@dptr,a
                                   1053 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:261: sync_delay();
      002235 12 01 1B         [24] 1054 	lcall	_sync_delay
                                   1055 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:262: EP0BCL = ptr_dat[wLL];
      002238 85 21 82         [24] 1056 	mov	dpl,_ptr_dat
      00223B 85 22 83         [24] 1057 	mov	dph,(_ptr_dat + 1)
      00223E A3               [24] 1058 	inc	dptr
      00223F A3               [24] 1059 	inc	dptr
      002240 A3               [24] 1060 	inc	dptr
      002241 A3               [24] 1061 	inc	dptr
      002242 A3               [24] 1062 	inc	dptr
      002243 A3               [24] 1063 	inc	dptr
      002244 E0               [24] 1064 	movx	a,@dptr
      002245 90 E6 8B         [24] 1065 	mov	dptr,#_EP0BCL
      002248 F0               [24] 1066 	movx	@dptr,a
                                   1067 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:263: sync_delay();
      002249 12 01 1B         [24] 1068 	lcall	_sync_delay
      00224C 80 09            [24] 1069 	sjmp	00111$
      00224E                       1070 00110$:
                                   1071 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:270: flagStallEP0 = 1;
                                   1072 ;	assignBit
      00224E D2 00            [12] 1073 	setb	_flagStallEP0
                                   1074 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:271: EP0CS = (unsigned char) ((1<<HSNAK) | (1<<STALL));// устанавливаем stall, снимаем snak
      002250 90 E6 A0         [24] 1075 	mov	dptr,#_EP0CS
      002253 74 81            [12] 1076 	mov	a,#0x81
      002255 F0               [24] 1077 	movx	@dptr,a
                                   1078 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:272: __asm__("reti");
      002256 32               [24] 1079 	reti
      002257                       1080 00111$:
                                   1081 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:274: __asm__("reti");
      002257 32               [24] 1082 	reti
                                   1083 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:275: }
      002258 22               [24] 1084 	ret
                                   1085 ;------------------------------------------------------------
                                   1086 ;Allocation info for local variables in function 'SOF'
                                   1087 ;------------------------------------------------------------
                                   1088 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:276: void SOF (void) {}
                                   1089 ;	-----------------------------------------
                                   1090 ;	 function SOF
                                   1091 ;	-----------------------------------------
      002259                       1092 _SOF:
      002259 22               [24] 1093 	ret
                                   1094 ;------------------------------------------------------------
                                   1095 ;Allocation info for local variables in function 'SUTOC'
                                   1096 ;------------------------------------------------------------
                                   1097 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:277: void SUTOC (void) {}
                                   1098 ;	-----------------------------------------
                                   1099 ;	 function SUTOC
                                   1100 ;	-----------------------------------------
      00225A                       1101 _SUTOC:
      00225A 22               [24] 1102 	ret
                                   1103 ;------------------------------------------------------------
                                   1104 ;Allocation info for local variables in function 'SUSPEND'
                                   1105 ;------------------------------------------------------------
                                   1106 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:278: void SUSPEND (void) {}
                                   1107 ;	-----------------------------------------
                                   1108 ;	 function SUSPEND
                                   1109 ;	-----------------------------------------
      00225B                       1110 _SUSPEND:
      00225B 22               [24] 1111 	ret
                                   1112 ;------------------------------------------------------------
                                   1113 ;Allocation info for local variables in function 'USB_RESET'
                                   1114 ;------------------------------------------------------------
                                   1115 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:279: void USB_RESET (void) {}
                                   1116 ;	-----------------------------------------
                                   1117 ;	 function USB_RESET
                                   1118 ;	-----------------------------------------
      00225C                       1119 _USB_RESET:
      00225C 22               [24] 1120 	ret
                                   1121 ;------------------------------------------------------------
                                   1122 ;Allocation info for local variables in function 'HISPEED'
                                   1123 ;------------------------------------------------------------
                                   1124 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:280: void HISPEED (void) {}
                                   1125 ;	-----------------------------------------
                                   1126 ;	 function HISPEED
                                   1127 ;	-----------------------------------------
      00225D                       1128 _HISPEED:
      00225D 22               [24] 1129 	ret
                                   1130 ;------------------------------------------------------------
                                   1131 ;Allocation info for local variables in function 'EP0ACK'
                                   1132 ;------------------------------------------------------------
                                   1133 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:281: void EP0ACK (void) {}
                                   1134 ;	-----------------------------------------
                                   1135 ;	 function EP0ACK
                                   1136 ;	-----------------------------------------
      00225E                       1137 _EP0ACK:
      00225E 22               [24] 1138 	ret
                                   1139 ;------------------------------------------------------------
                                   1140 ;Allocation info for local variables in function '_reserved_'
                                   1141 ;------------------------------------------------------------
                                   1142 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:282: void _reserved_ (void) {}
                                   1143 ;	-----------------------------------------
                                   1144 ;	 function _reserved_
                                   1145 ;	-----------------------------------------
      00225F                       1146 __reserved_:
      00225F 22               [24] 1147 	ret
                                   1148 ;------------------------------------------------------------
                                   1149 ;Allocation info for local variables in function 'EP0IN'
                                   1150 ;------------------------------------------------------------
                                   1151 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:283: void EP0IN (void) {}
                                   1152 ;	-----------------------------------------
                                   1153 ;	 function EP0IN
                                   1154 ;	-----------------------------------------
      002260                       1155 _EP0IN:
      002260 22               [24] 1156 	ret
                                   1157 ;------------------------------------------------------------
                                   1158 ;Allocation info for local variables in function 'EP0OUT'
                                   1159 ;------------------------------------------------------------
                                   1160 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:284: void EP0OUT (void) {}
                                   1161 ;	-----------------------------------------
                                   1162 ;	 function EP0OUT
                                   1163 ;	-----------------------------------------
      002261                       1164 _EP0OUT:
      002261 22               [24] 1165 	ret
                                   1166 ;------------------------------------------------------------
                                   1167 ;Allocation info for local variables in function 'EP1IN'
                                   1168 ;------------------------------------------------------------
                                   1169 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:285: void EP1IN (void) {}
                                   1170 ;	-----------------------------------------
                                   1171 ;	 function EP1IN
                                   1172 ;	-----------------------------------------
      002262                       1173 _EP1IN:
      002262 22               [24] 1174 	ret
                                   1175 ;------------------------------------------------------------
                                   1176 ;Allocation info for local variables in function 'EP1OUT'
                                   1177 ;------------------------------------------------------------
                                   1178 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:286: void EP1OUT (void) {}
                                   1179 ;	-----------------------------------------
                                   1180 ;	 function EP1OUT
                                   1181 ;	-----------------------------------------
      002263                       1182 _EP1OUT:
      002263 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'EP2'
                                   1186 ;------------------------------------------------------------
                                   1187 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:287: void EP2 (void) {}
                                   1188 ;	-----------------------------------------
                                   1189 ;	 function EP2
                                   1190 ;	-----------------------------------------
      002264                       1191 _EP2:
      002264 22               [24] 1192 	ret
                                   1193 ;------------------------------------------------------------
                                   1194 ;Allocation info for local variables in function 'EP4'
                                   1195 ;------------------------------------------------------------
                                   1196 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:288: void EP4 (void) {}
                                   1197 ;	-----------------------------------------
                                   1198 ;	 function EP4
                                   1199 ;	-----------------------------------------
      002265                       1200 _EP4:
      002265 22               [24] 1201 	ret
                                   1202 ;------------------------------------------------------------
                                   1203 ;Allocation info for local variables in function 'EP6'
                                   1204 ;------------------------------------------------------------
                                   1205 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:289: void EP6 (void) {}
                                   1206 ;	-----------------------------------------
                                   1207 ;	 function EP6
                                   1208 ;	-----------------------------------------
      002266                       1209 _EP6:
      002266 22               [24] 1210 	ret
                                   1211 ;------------------------------------------------------------
                                   1212 ;Allocation info for local variables in function 'EP8'
                                   1213 ;------------------------------------------------------------
                                   1214 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:290: void EP8 (void) {}
                                   1215 ;	-----------------------------------------
                                   1216 ;	 function EP8
                                   1217 ;	-----------------------------------------
      002267                       1218 _EP8:
      002267 22               [24] 1219 	ret
                                   1220 ;------------------------------------------------------------
                                   1221 ;Allocation info for local variables in function 'IBN'
                                   1222 ;------------------------------------------------------------
                                   1223 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:291: void IBN (void) {}
                                   1224 ;	-----------------------------------------
                                   1225 ;	 function IBN
                                   1226 ;	-----------------------------------------
      002268                       1227 _IBN:
      002268 22               [24] 1228 	ret
                                   1229 ;------------------------------------------------------------
                                   1230 ;Allocation info for local variables in function '_reserved2_'
                                   1231 ;------------------------------------------------------------
                                   1232 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:292: void _reserved2_ (void) {}
                                   1233 ;	-----------------------------------------
                                   1234 ;	 function _reserved2_
                                   1235 ;	-----------------------------------------
      002269                       1236 __reserved2_:
      002269 22               [24] 1237 	ret
                                   1238 ;------------------------------------------------------------
                                   1239 ;Allocation info for local variables in function 'EP0PING'
                                   1240 ;------------------------------------------------------------
                                   1241 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:293: void EP0PING (void) {}
                                   1242 ;	-----------------------------------------
                                   1243 ;	 function EP0PING
                                   1244 ;	-----------------------------------------
      00226A                       1245 _EP0PING:
      00226A 22               [24] 1246 	ret
                                   1247 ;------------------------------------------------------------
                                   1248 ;Allocation info for local variables in function 'EP1PING'
                                   1249 ;------------------------------------------------------------
                                   1250 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:294: void EP1PING (void) {}
                                   1251 ;	-----------------------------------------
                                   1252 ;	 function EP1PING
                                   1253 ;	-----------------------------------------
      00226B                       1254 _EP1PING:
      00226B 22               [24] 1255 	ret
                                   1256 ;------------------------------------------------------------
                                   1257 ;Allocation info for local variables in function 'EP2PING'
                                   1258 ;------------------------------------------------------------
                                   1259 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:295: void EP2PING (void) {}
                                   1260 ;	-----------------------------------------
                                   1261 ;	 function EP2PING
                                   1262 ;	-----------------------------------------
      00226C                       1263 _EP2PING:
      00226C 22               [24] 1264 	ret
                                   1265 ;------------------------------------------------------------
                                   1266 ;Allocation info for local variables in function 'EP4PING'
                                   1267 ;------------------------------------------------------------
                                   1268 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:296: void EP4PING (void) {}
                                   1269 ;	-----------------------------------------
                                   1270 ;	 function EP4PING
                                   1271 ;	-----------------------------------------
      00226D                       1272 _EP4PING:
      00226D 22               [24] 1273 	ret
                                   1274 ;------------------------------------------------------------
                                   1275 ;Allocation info for local variables in function 'EP6PING'
                                   1276 ;------------------------------------------------------------
                                   1277 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:297: void EP6PING (void) {}
                                   1278 ;	-----------------------------------------
                                   1279 ;	 function EP6PING
                                   1280 ;	-----------------------------------------
      00226E                       1281 _EP6PING:
      00226E 22               [24] 1282 	ret
                                   1283 ;------------------------------------------------------------
                                   1284 ;Allocation info for local variables in function 'EP8PING'
                                   1285 ;------------------------------------------------------------
                                   1286 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:298: void EP8PING (void) {}
                                   1287 ;	-----------------------------------------
                                   1288 ;	 function EP8PING
                                   1289 ;	-----------------------------------------
      00226F                       1290 _EP8PING:
      00226F 22               [24] 1291 	ret
                                   1292 ;------------------------------------------------------------
                                   1293 ;Allocation info for local variables in function 'ERRLIMIT'
                                   1294 ;------------------------------------------------------------
                                   1295 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:299: void ERRLIMIT (void) {}
                                   1296 ;	-----------------------------------------
                                   1297 ;	 function ERRLIMIT
                                   1298 ;	-----------------------------------------
      002270                       1299 _ERRLIMIT:
      002270 22               [24] 1300 	ret
                                   1301 ;------------------------------------------------------------
                                   1302 ;Allocation info for local variables in function '_reserved3_'
                                   1303 ;------------------------------------------------------------
                                   1304 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:300: void _reserved3_ (void) {}
                                   1305 ;	-----------------------------------------
                                   1306 ;	 function _reserved3_
                                   1307 ;	-----------------------------------------
      002271                       1308 __reserved3_:
      002271 22               [24] 1309 	ret
                                   1310 ;------------------------------------------------------------
                                   1311 ;Allocation info for local variables in function '_reserved4_'
                                   1312 ;------------------------------------------------------------
                                   1313 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:301: void _reserved4_ (void) {}
                                   1314 ;	-----------------------------------------
                                   1315 ;	 function _reserved4_
                                   1316 ;	-----------------------------------------
      002272                       1317 __reserved4_:
      002272 22               [24] 1318 	ret
                                   1319 ;------------------------------------------------------------
                                   1320 ;Allocation info for local variables in function '_reserved5_'
                                   1321 ;------------------------------------------------------------
                                   1322 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:302: void _reserved5_ (void) {}
                                   1323 ;	-----------------------------------------
                                   1324 ;	 function _reserved5_
                                   1325 ;	-----------------------------------------
      002273                       1326 __reserved5_:
      002273 22               [24] 1327 	ret
                                   1328 ;------------------------------------------------------------
                                   1329 ;Allocation info for local variables in function 'EP2ISOERR'
                                   1330 ;------------------------------------------------------------
                                   1331 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:303: void EP2ISOERR (void) {}
                                   1332 ;	-----------------------------------------
                                   1333 ;	 function EP2ISOERR
                                   1334 ;	-----------------------------------------
      002274                       1335 _EP2ISOERR:
      002274 22               [24] 1336 	ret
                                   1337 ;------------------------------------------------------------
                                   1338 ;Allocation info for local variables in function 'EP4ISOERR'
                                   1339 ;------------------------------------------------------------
                                   1340 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:304: void EP4ISOERR (void) {}
                                   1341 ;	-----------------------------------------
                                   1342 ;	 function EP4ISOERR
                                   1343 ;	-----------------------------------------
      002275                       1344 _EP4ISOERR:
      002275 22               [24] 1345 	ret
                                   1346 ;------------------------------------------------------------
                                   1347 ;Allocation info for local variables in function 'EP6ISOERR'
                                   1348 ;------------------------------------------------------------
                                   1349 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:305: void EP6ISOERR (void) {}
                                   1350 ;	-----------------------------------------
                                   1351 ;	 function EP6ISOERR
                                   1352 ;	-----------------------------------------
      002276                       1353 _EP6ISOERR:
      002276 22               [24] 1354 	ret
                                   1355 ;------------------------------------------------------------
                                   1356 ;Allocation info for local variables in function 'EP8ISOERR'
                                   1357 ;------------------------------------------------------------
                                   1358 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:306: void EP8ISOERR (void) {}
                                   1359 ;	-----------------------------------------
                                   1360 ;	 function EP8ISOERR
                                   1361 ;	-----------------------------------------
      002277                       1362 _EP8ISOERR:
      002277 22               [24] 1363 	ret
                                   1364 ;------------------------------------------------------------
                                   1365 ;Allocation info for local variables in function 'send_byte_uart_9600'
                                   1366 ;------------------------------------------------------------
                                   1367 ;byte                      Allocated to registers r7 
                                   1368 ;i                         Allocated to registers r6 
                                   1369 ;------------------------------------------------------------
                                   1370 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:308: void send_byte_uart_9600 (unsigned char byte)
                                   1371 ;	-----------------------------------------
                                   1372 ;	 function send_byte_uart_9600
                                   1373 ;	-----------------------------------------
      002278                       1374 _send_byte_uart_9600:
      002278 AF 82            [24] 1375 	mov	r7,dpl
                                   1376 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:310: TMOD = (0<<TMOD0 | 1<<TMOD1);// 8bit counter0 with auto-reload T0
      00227A 75 89 02         [24] 1377 	mov	_TMOD,#0x02
                                   1378 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:311: CKCON = (0<<CKCON3);// CLK/12
      00227D 75 8E 00         [24] 1379 	mov	_CKCON,#0x00
                                   1380 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:312: TH0 = 0x30;// 48 T0
      002280 75 8C 30         [24] 1381 	mov	_TH0,#0x30
                                   1382 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:313: TL0 = 0x00;
      002283 75 8A 00         [24] 1383 	mov	_TL0,#0x00
                                   1384 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:314: PA0 = 0;
                                   1385 ;	assignBit
      002286 C2 80            [12] 1386 	clr	_PA0
                                   1387 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:316: TR0 = 1;// run timer0
                                   1388 ;	assignBit
      002288 D2 8C            [12] 1389 	setb	_TR0
                                   1390 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:317: while (!TF0);
      00228A                       1391 00101$:
                                   1392 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:318: TF0 = 0;
                                   1393 ;	assignBit
      00228A 10 8D 02         [24] 1394 	jbc	_TF0,00160$
      00228D 80 FB            [24] 1395 	sjmp	00101$
      00228F                       1396 00160$:
                                   1397 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:319: for (unsigned char i = 0; i < 8; i++)
      00228F 7E 00            [12] 1398 	mov	r6,#0x00
      002291                       1399 00115$:
      002291 BE 08 00         [24] 1400 	cjne	r6,#0x08,00161$
      002294                       1401 00161$:
      002294 50 1B            [24] 1402 	jnc	00107$
                                   1403 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:321: PA0 = ((byte >> i) & 0x01);
      002296 8E F0            [24] 1404 	mov	b,r6
      002298 05 F0            [12] 1405 	inc	b
      00229A EF               [12] 1406 	mov	a,r7
      00229B 80 02            [24] 1407 	sjmp	00164$
      00229D                       1408 00163$:
      00229D C3               [12] 1409 	clr	c
      00229E 13               [12] 1410 	rrc	a
      00229F                       1411 00164$:
      00229F D5 F0 FB         [24] 1412 	djnz	b,00163$
      0022A2 54 01            [12] 1413 	anl	a,#0x01
                                   1414 ;	assignBit
      0022A4 FD               [12] 1415 	mov	r5,a
      0022A5 24 FF            [12] 1416 	add	a,#0xff
      0022A7 92 80            [24] 1417 	mov	_PA0,c
                                   1418 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:322: while (!TF0);
      0022A9                       1419 00104$:
                                   1420 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:323: TF0 = 0;
                                   1421 ;	assignBit
      0022A9 10 8D 02         [24] 1422 	jbc	_TF0,00165$
      0022AC 80 FB            [24] 1423 	sjmp	00104$
      0022AE                       1424 00165$:
                                   1425 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:319: for (unsigned char i = 0; i < 8; i++)
      0022AE 0E               [12] 1426 	inc	r6
      0022AF 80 E0            [24] 1427 	sjmp	00115$
      0022B1                       1428 00107$:
                                   1429 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:325: PA0 = 1;
                                   1430 ;	assignBit
      0022B1 D2 80            [12] 1431 	setb	_PA0
                                   1432 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:326: while (!TF0);
      0022B3                       1433 00108$:
                                   1434 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:327: TF0 = 0;
                                   1435 ;	assignBit
      0022B3 10 8D 02         [24] 1436 	jbc	_TF0,00166$
      0022B6 80 FB            [24] 1437 	sjmp	00108$
      0022B8                       1438 00166$:
                                   1439 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:328: while (!TF0);
      0022B8                       1440 00111$:
                                   1441 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:329: TF0 = 0;
                                   1442 ;	assignBit
      0022B8 10 8D 02         [24] 1443 	jbc	_TF0,00167$
      0022BB 80 FB            [24] 1444 	sjmp	00111$
      0022BD                       1445 00167$:
                                   1446 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:330: TR0 = 0;
                                   1447 ;	assignBit
      0022BD C2 8C            [12] 1448 	clr	_TR0
                                   1449 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:331: TH0 = 0;
      0022BF 75 8C 00         [24] 1450 	mov	_TH0,#0x00
                                   1451 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:332: TL0 = 0;
      0022C2 75 8A 00         [24] 1452 	mov	_TL0,#0x00
                                   1453 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:333: return;
                                   1454 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\interrupts.c:335: }
      0022C5 22               [24] 1455 	ret
                                   1456 	.area USB_INTERRUPTS(CODE)
                                   1457 	.area CONST   (CODE)
                                   1458 	.area XINIT   (CODE)
                                   1459 	.area CABS    (ABS,CODE)
