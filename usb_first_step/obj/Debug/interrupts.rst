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
                                     23 	.globl _validEP
                                     24 	.globl _int6
                                     25 	.globl _int5
                                     26 	.globl _int4
                                     27 	.globl _i2c
                                     28 	.globl _usb
                                     29 	.globl _usart1
                                     30 	.globl _res
                                     31 	.globl _tim2
                                     32 	.globl _usart0
                                     33 	.globl _tim1
                                     34 	.globl _int1
                                     35 	.globl _tim0
                                     36 	.globl _int0
                                     37 	.globl _vectors
                                     38 	.globl _sync_delay
                                     39 	.globl _TF1
                                     40 	.globl _TR1
                                     41 	.globl _TF0
                                     42 	.globl _TR0
                                     43 	.globl _IE1
                                     44 	.globl _IT1
                                     45 	.globl _IE0
                                     46 	.globl _IT0
                                     47 	.globl _EX0
                                     48 	.globl _ET0
                                     49 	.globl _EX1
                                     50 	.globl _ET1
                                     51 	.globl _ES0
                                     52 	.globl _ET2
                                     53 	.globl _ES1
                                     54 	.globl _EA
                                     55 	.globl _PA1
                                     56 	.globl _PA0
                                     57 	.globl _EX6
                                     58 	.globl _EX5
                                     59 	.globl _EX4
                                     60 	.globl _EI2C
                                     61 	.globl _EUSB
                                     62 	.globl _EXIF
                                     63 	.globl _EIE
                                     64 	.globl _ACC
                                     65 	.globl _PSW
                                     66 	.globl _IE
                                     67 	.globl _TH1
                                     68 	.globl _TL1
                                     69 	.globl _TH0
                                     70 	.globl _TL0
                                     71 	.globl _TCON
                                     72 	.globl _CKCON
                                     73 	.globl _TMOD
                                     74 	.globl _IOA
                                     75 	.globl _OEA
                                     76 	.globl _MPAGE
                                     77 	.globl __XPAGE
                                     78 	.globl _EP1INCFG
                                     79 	.globl _EP1OUTCFG
                                     80 	.globl _EPIRQ
                                     81 	.globl _EPIE
                                     82 	.globl _EP0BCL
                                     83 	.globl _EP0BCH
                                     84 	.globl _SUDPTRL
                                     85 	.globl _SUDPTRH
                                     86 	.globl _SUDPTRCTL
                                     87 	.globl _EP0CS
                                     88 	.globl _USBIRQ
                                     89 	.globl _USBIE
                                     90 	.globl _INTSETUP
                                     91 	.globl _USBCS
                                     92 	.globl _CPUCS
                                     93 	.globl _std_func
                                     94 	.globl _ptr_setupdat
                                     95 	.globl _ptr_descriptor
                                     96 	.globl _ptr_dat
                                     97 	.globl _SUDAV
                                     98 	.globl _SOF
                                     99 	.globl _SUTOC
                                    100 	.globl _SUSPEND
                                    101 	.globl _USB_RESET
                                    102 	.globl _HISPEED
                                    103 	.globl _EP0ACK
                                    104 	.globl __reserved_
                                    105 	.globl _EP0IN
                                    106 	.globl _EP0OUT
                                    107 	.globl _EP1IN
                                    108 	.globl _EP1OUT
                                    109 	.globl _EP2
                                    110 	.globl _EP4
                                    111 	.globl _EP6
                                    112 	.globl _EP8
                                    113 	.globl _IBN
                                    114 	.globl __reserved2_
                                    115 	.globl _EP0PING
                                    116 	.globl _EP1PING
                                    117 	.globl _EP2PING
                                    118 	.globl _EP4PING
                                    119 	.globl _EP6PING
                                    120 	.globl _EP8PING
                                    121 	.globl _ERRLIMIT
                                    122 	.globl __reserved3_
                                    123 	.globl __reserved4_
                                    124 	.globl __reserved5_
                                    125 	.globl _EP2ISOERR
                                    126 	.globl _EP4ISOERR
                                    127 	.globl _EP6ISOERR
                                    128 	.globl _EP8ISOERR
                                    129 	.globl _send_byte_uart_9600
                                    130 ;--------------------------------------------------------
                                    131 ; special function registers
                                    132 ;--------------------------------------------------------
                                    133 	.area RSEG    (ABS,DATA)
      000000                        134 	.org 0x0000
                           000092   135 G$_XPAGE$0_0$0 == 0x0092
                           000092   136 __XPAGE	=	0x0092
                           000092   137 G$MPAGE$0_0$0 == 0x0092
                           000092   138 _MPAGE	=	0x0092
                           0000B2   139 G$OEA$0_0$0 == 0x00b2
                           0000B2   140 _OEA	=	0x00b2
                           000080   141 G$IOA$0_0$0 == 0x0080
                           000080   142 _IOA	=	0x0080
                           000089   143 G$TMOD$0_0$0 == 0x0089
                           000089   144 _TMOD	=	0x0089
                           00008E   145 G$CKCON$0_0$0 == 0x008e
                           00008E   146 _CKCON	=	0x008e
                           000088   147 G$TCON$0_0$0 == 0x0088
                           000088   148 _TCON	=	0x0088
                           00008A   149 G$TL0$0_0$0 == 0x008a
                           00008A   150 _TL0	=	0x008a
                           00008C   151 G$TH0$0_0$0 == 0x008c
                           00008C   152 _TH0	=	0x008c
                           00008B   153 G$TL1$0_0$0 == 0x008b
                           00008B   154 _TL1	=	0x008b
                           00008D   155 G$TH1$0_0$0 == 0x008d
                           00008D   156 _TH1	=	0x008d
                           0000A8   157 G$IE$0_0$0 == 0x00a8
                           0000A8   158 _IE	=	0x00a8
                           0000D0   159 G$PSW$0_0$0 == 0x00d0
                           0000D0   160 _PSW	=	0x00d0
                           0000E0   161 G$ACC$0_0$0 == 0x00e0
                           0000E0   162 _ACC	=	0x00e0
                           0000E8   163 G$EIE$0_0$0 == 0x00e8
                           0000E8   164 _EIE	=	0x00e8
                           000091   165 G$EXIF$0_0$0 == 0x0091
                           000091   166 _EXIF	=	0x0091
                                    167 ;--------------------------------------------------------
                                    168 ; special function bits
                                    169 ;--------------------------------------------------------
                                    170 	.area RSEG    (ABS,DATA)
      000000                        171 	.org 0x0000
                           0000E8   172 G$EUSB$0_0$0 == 0x00e8
                           0000E8   173 _EUSB	=	0x00e8
                           0000E9   174 G$EI2C$0_0$0 == 0x00e9
                           0000E9   175 _EI2C	=	0x00e9
                           0000EA   176 G$EX4$0_0$0 == 0x00ea
                           0000EA   177 _EX4	=	0x00ea
                           0000EB   178 G$EX5$0_0$0 == 0x00eb
                           0000EB   179 _EX5	=	0x00eb
                           0000EC   180 G$EX6$0_0$0 == 0x00ec
                           0000EC   181 _EX6	=	0x00ec
                           000080   182 G$PA0$0_0$0 == 0x0080
                           000080   183 _PA0	=	0x0080
                           000081   184 G$PA1$0_0$0 == 0x0081
                           000081   185 _PA1	=	0x0081
                           0000AF   186 G$EA$0_0$0 == 0x00af
                           0000AF   187 _EA	=	0x00af
                           0000AE   188 G$ES1$0_0$0 == 0x00ae
                           0000AE   189 _ES1	=	0x00ae
                           0000AD   190 G$ET2$0_0$0 == 0x00ad
                           0000AD   191 _ET2	=	0x00ad
                           0000AC   192 G$ES0$0_0$0 == 0x00ac
                           0000AC   193 _ES0	=	0x00ac
                           0000AB   194 G$ET1$0_0$0 == 0x00ab
                           0000AB   195 _ET1	=	0x00ab
                           0000AA   196 G$EX1$0_0$0 == 0x00aa
                           0000AA   197 _EX1	=	0x00aa
                           0000A9   198 G$ET0$0_0$0 == 0x00a9
                           0000A9   199 _ET0	=	0x00a9
                           0000A8   200 G$EX0$0_0$0 == 0x00a8
                           0000A8   201 _EX0	=	0x00a8
                           000088   202 G$IT0$0_0$0 == 0x0088
                           000088   203 _IT0	=	0x0088
                           000089   204 G$IE0$0_0$0 == 0x0089
                           000089   205 _IE0	=	0x0089
                           00008A   206 G$IT1$0_0$0 == 0x008a
                           00008A   207 _IT1	=	0x008a
                           00008B   208 G$IE1$0_0$0 == 0x008b
                           00008B   209 _IE1	=	0x008b
                           00008C   210 G$TR0$0_0$0 == 0x008c
                           00008C   211 _TR0	=	0x008c
                           00008D   212 G$TF0$0_0$0 == 0x008d
                           00008D   213 _TF0	=	0x008d
                           00008E   214 G$TR1$0_0$0 == 0x008e
                           00008E   215 _TR1	=	0x008e
                           00008F   216 G$TF1$0_0$0 == 0x008f
                           00008F   217 _TF1	=	0x008f
                                    218 ;--------------------------------------------------------
                                    219 ; overlayable register banks
                                    220 ;--------------------------------------------------------
                                    221 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        222 	.ds 8
                                    223 ;--------------------------------------------------------
                                    224 ; internal ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area DSEG    (DATA)
                           000000   227 G$ptr_dat$0_0$0==.
      000021                        228 _ptr_dat::
      000021                        229 	.ds 2
                           000002   230 G$ptr_descriptor$0_0$0==.
      000023                        231 _ptr_descriptor::
      000023                        232 	.ds 2
                           000004   233 G$ptr_setupdat$0_0$0==.
      000025                        234 _ptr_setupdat::
      000025                        235 	.ds 2
                           000006   236 G$std_func$0_0$0==.
      000027                        237 _std_func::
      000027                        238 	.ds 26
                                    239 ;--------------------------------------------------------
                                    240 ; overlayable items in internal ram 
                                    241 ;--------------------------------------------------------
                                    242 	.area	OSEG    (OVR,DATA)
                                    243 	.area	OSEG    (OVR,DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; indirectly addressable internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area ISEG    (DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; absolute internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area IABS    (ABS,DATA)
                                    252 	.area IABS    (ABS,DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; bit data
                                    255 ;--------------------------------------------------------
                                    256 	.area BSEG    (BIT)
                                    257 ;--------------------------------------------------------
                                    258 ; paged external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area PSEG    (PAG,XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XSEG    (XDATA)
                           00E600   265 G$CPUCS$0_0$0 == 0xe600
                           00E600   266 _CPUCS	=	0xe600
                           00E680   267 G$USBCS$0_0$0 == 0xe680
                           00E680   268 _USBCS	=	0xe680
                           00E668   269 G$INTSETUP$0_0$0 == 0xe668
                           00E668   270 _INTSETUP	=	0xe668
                           00E65C   271 G$USBIE$0_0$0 == 0xe65c
                           00E65C   272 _USBIE	=	0xe65c
                           00E65D   273 G$USBIRQ$0_0$0 == 0xe65d
                           00E65D   274 _USBIRQ	=	0xe65d
                           00E6A0   275 G$EP0CS$0_0$0 == 0xe6a0
                           00E6A0   276 _EP0CS	=	0xe6a0
                           00E6B5   277 G$SUDPTRCTL$0_0$0 == 0xe6b5
                           00E6B5   278 _SUDPTRCTL	=	0xe6b5
                           00E6B3   279 G$SUDPTRH$0_0$0 == 0xe6b3
                           00E6B3   280 _SUDPTRH	=	0xe6b3
                           00E6B4   281 G$SUDPTRL$0_0$0 == 0xe6b4
                           00E6B4   282 _SUDPTRL	=	0xe6b4
                           00E68A   283 G$EP0BCH$0_0$0 == 0xe68a
                           00E68A   284 _EP0BCH	=	0xe68a
                           00E68B   285 G$EP0BCL$0_0$0 == 0xe68b
                           00E68B   286 _EP0BCL	=	0xe68b
                           00E65E   287 G$EPIE$0_0$0 == 0xe65e
                           00E65E   288 _EPIE	=	0xe65e
                           00E65F   289 G$EPIRQ$0_0$0 == 0xe65f
                           00E65F   290 _EPIRQ	=	0xe65f
                           00E610   291 G$EP1OUTCFG$0_0$0 == 0xe610
                           00E610   292 _EP1OUTCFG	=	0xe610
                           00E611   293 G$EP1INCFG$0_0$0 == 0xe611
                           00E611   294 _EP1INCFG	=	0xe611
                                    295 ;--------------------------------------------------------
                                    296 ; absolute external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XABS    (ABS,XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; external initialized ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XISEG   (XDATA)
                                    303 	.area HOME    (CODE)
                                    304 	.area GSINIT0 (CODE)
                                    305 	.area GSINIT1 (CODE)
                                    306 	.area GSINIT2 (CODE)
                                    307 	.area GSINIT3 (CODE)
                                    308 	.area GSINIT4 (CODE)
                                    309 	.area GSINIT5 (CODE)
                                    310 	.area GSINIT  (CODE)
                                    311 	.area GSFINAL (CODE)
                                    312 	.area CSEG    (CODE)
                                    313 ;--------------------------------------------------------
                                    314 ; global & static initialisations
                                    315 ;--------------------------------------------------------
                                    316 	.area HOME    (CODE)
                                    317 	.area GSINIT  (CODE)
                                    318 	.area GSFINAL (CODE)
                                    319 	.area GSINIT  (CODE)
                           000000   320 	C$interrupts.c$53$1_0$227 ==.
                                    321 ;	interrupts.c:53: __xdata unsigned char *ptr_dat = (__xdata unsigned char *) xdata_temp;// указатель набуфер
      0000C4 75 21 00         [24]  322 	mov	_ptr_dat,#0x00
      0000C7 75 22 E1         [24]  323 	mov	(_ptr_dat + 1),#0xe1
                           000006   324 	C$interrupts.c$240$1_0$227 ==.
                                    325 ;	interrupts.c:240: void (*std_func[13]) (void) = {get_status, clear_feature, reserve, set_feature, reserve, set_adr, get_descriptor,
      0000CA 75 27 A7         [24]  326 	mov	(_std_func + 0),#_get_status
      0000CD 75 28 01         [24]  327 	mov	(_std_func + 1),#(_get_status >> 8)
      0000D0 75 29 A8         [24]  328 	mov	((_std_func + 0x0002) + 0),#_clear_feature
      0000D3 75 2A 01         [24]  329 	mov	((_std_func + 0x0002) + 1),#(_clear_feature >> 8)
      0000D6 75 2B A9         [24]  330 	mov	((_std_func + 0x0004) + 0),#_reserve
      0000D9 75 2C 01         [24]  331 	mov	((_std_func + 0x0004) + 1),#(_reserve >> 8)
      0000DC 75 2D AC         [24]  332 	mov	((_std_func + 0x0006) + 0),#_set_feature
      0000DF 75 2E 01         [24]  333 	mov	((_std_func + 0x0006) + 1),#(_set_feature >> 8)
      0000E2 75 2F A9         [24]  334 	mov	((_std_func + 0x0008) + 0),#_reserve
      0000E5 75 30 01         [24]  335 	mov	((_std_func + 0x0008) + 1),#(_reserve >> 8)
      0000E8 75 31 AD         [24]  336 	mov	((_std_func + 0x000a) + 0),#_set_adr
      0000EB 75 32 01         [24]  337 	mov	((_std_func + 0x000a) + 1),#(_set_adr >> 8)
      0000EE 75 33 AE         [24]  338 	mov	((_std_func + 0x000c) + 0),#_get_descriptor
      0000F1 75 34 01         [24]  339 	mov	((_std_func + 0x000c) + 1),#(_get_descriptor >> 8)
      0000F4 75 35 1C         [24]  340 	mov	((_std_func + 0x000e) + 0),#_set_descriptor
      0000F7 75 36 03         [24]  341 	mov	((_std_func + 0x000e) + 1),#(_set_descriptor >> 8)
      0000FA 75 37 1F         [24]  342 	mov	((_std_func + 0x0010) + 0),#_get_configurated
      0000FD 75 38 03         [24]  343 	mov	((_std_func + 0x0010) + 1),#(_get_configurated >> 8)
      000100 75 39 20         [24]  344 	mov	((_std_func + 0x0012) + 0),#_set_configurated
      000103 75 3A 03         [24]  345 	mov	((_std_func + 0x0012) + 1),#(_set_configurated >> 8)
      000106 75 3B 99         [24]  346 	mov	((_std_func + 0x0014) + 0),#_get_interface
      000109 75 3C 03         [24]  347 	mov	((_std_func + 0x0014) + 1),#(_get_interface >> 8)
      00010C 75 3D 9A         [24]  348 	mov	((_std_func + 0x0016) + 0),#_set_interface
      00010F 75 3E 03         [24]  349 	mov	((_std_func + 0x0016) + 1),#(_set_interface >> 8)
      000112 75 3F 9B         [24]  350 	mov	((_std_func + 0x0018) + 0),#_synch_frame
      000115 75 40 03         [24]  351 	mov	((_std_func + 0x0018) + 1),#(_synch_frame >> 8)
                                    352 ;--------------------------------------------------------
                                    353 ; Home
                                    354 ;--------------------------------------------------------
                                    355 	.area HOME    (CODE)
                                    356 	.area HOME    (CODE)
                                    357 ;--------------------------------------------------------
                                    358 ; code
                                    359 ;--------------------------------------------------------
                                    360 	.area USB_INTERRUPTS(CODE)
                                    361 ;------------------------------------------------------------
                                    362 ;Allocation info for local variables in function 'vectors'
                                    363 ;------------------------------------------------------------
                           000000   364 	G$vectors$0$0 ==.
                           000000   365 	C$interrupts.c$71$0_0$36 ==.
                                    366 ;	interrupts.c:71: volatile void vectors (void) __naked
                                    367 ;	-----------------------------------------
                                    368 ;	 function vectors
                                    369 ;	-----------------------------------------
      00018D                        370 _vectors:
                                    371 ;	naked function: no prologue.
                           000000   372 	C$interrupts.c$82$1_0$36 ==.
                                    373 ;	interrupts.c:82: __endasm;
      00018D 02 03 9C         [24]  374 	ljmp	_SUDAV
      000190 00               [12]  375 	nop
      000191 02 04 71         [24]  376 	ljmp	_SOF
      000194 00               [12]  377 	nop
      000195 02 04 72         [24]  378 	ljmp	_SUTOC
      000198 00               [12]  379 	nop
                           00000C   380 	C$interrupts.c$83$1_0$36 ==.
                                    381 ;	interrupts.c:83: }
                                    382 ;	naked function: no epilogue.
                           00000C   383 	C$interrupts.c$83$1_0$36 ==.
                           00000C   384 	XG$vectors$0$0 ==.
                                    385 ;------------------------------------------------------------
                                    386 ;Allocation info for local variables in function 'int0'
                                    387 ;------------------------------------------------------------
                           00000C   388 	G$int0$0$0 ==.
                           00000C   389 	C$interrupts.c$89$1_0$39 ==.
                                    390 ;	interrupts.c:89: void int0 (void) __interrupt (0) {}
                                    391 ;	-----------------------------------------
                                    392 ;	 function int0
                                    393 ;	-----------------------------------------
      000199                        394 _int0:
                           000007   395 	ar7 = 0x07
                           000006   396 	ar6 = 0x06
                           000005   397 	ar5 = 0x05
                           000004   398 	ar4 = 0x04
                           000003   399 	ar3 = 0x03
                           000002   400 	ar2 = 0x02
                           000001   401 	ar1 = 0x01
                           000000   402 	ar0 = 0x00
                           00000C   403 	C$interrupts.c$89$1_0$39 ==.
                           00000C   404 	XG$int0$0$0 ==.
      000199 32               [24]  405 	reti
                                    406 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    407 ;	eliminated unneeded push/pop not_psw
                                    408 ;	eliminated unneeded push/pop dpl
                                    409 ;	eliminated unneeded push/pop dph
                                    410 ;	eliminated unneeded push/pop b
                                    411 ;	eliminated unneeded push/pop acc
                                    412 ;------------------------------------------------------------
                                    413 ;Allocation info for local variables in function 'tim0'
                                    414 ;------------------------------------------------------------
                           00000D   415 	G$tim0$0$0 ==.
                           00000D   416 	C$interrupts.c$90$1_0$42 ==.
                                    417 ;	interrupts.c:90: void tim0 (void) __interrupt (1) {}
                                    418 ;	-----------------------------------------
                                    419 ;	 function tim0
                                    420 ;	-----------------------------------------
      00019A                        421 _tim0:
                           00000D   422 	C$interrupts.c$90$1_0$42 ==.
                           00000D   423 	XG$tim0$0$0 ==.
      00019A 32               [24]  424 	reti
                                    425 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    426 ;	eliminated unneeded push/pop not_psw
                                    427 ;	eliminated unneeded push/pop dpl
                                    428 ;	eliminated unneeded push/pop dph
                                    429 ;	eliminated unneeded push/pop b
                                    430 ;	eliminated unneeded push/pop acc
                                    431 ;------------------------------------------------------------
                                    432 ;Allocation info for local variables in function 'int1'
                                    433 ;------------------------------------------------------------
                           00000E   434 	G$int1$0$0 ==.
                           00000E   435 	C$interrupts.c$91$1_0$45 ==.
                                    436 ;	interrupts.c:91: void int1 (void) __interrupt (2) {}
                                    437 ;	-----------------------------------------
                                    438 ;	 function int1
                                    439 ;	-----------------------------------------
      00019B                        440 _int1:
                           00000E   441 	C$interrupts.c$91$1_0$45 ==.
                           00000E   442 	XG$int1$0$0 ==.
      00019B 32               [24]  443 	reti
                                    444 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    445 ;	eliminated unneeded push/pop not_psw
                                    446 ;	eliminated unneeded push/pop dpl
                                    447 ;	eliminated unneeded push/pop dph
                                    448 ;	eliminated unneeded push/pop b
                                    449 ;	eliminated unneeded push/pop acc
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'tim1'
                                    452 ;------------------------------------------------------------
                           00000F   453 	G$tim1$0$0 ==.
                           00000F   454 	C$interrupts.c$92$1_0$48 ==.
                                    455 ;	interrupts.c:92: void tim1 (void) __interrupt (3) {}
                                    456 ;	-----------------------------------------
                                    457 ;	 function tim1
                                    458 ;	-----------------------------------------
      00019C                        459 _tim1:
                           00000F   460 	C$interrupts.c$92$1_0$48 ==.
                           00000F   461 	XG$tim1$0$0 ==.
      00019C 32               [24]  462 	reti
                                    463 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    464 ;	eliminated unneeded push/pop not_psw
                                    465 ;	eliminated unneeded push/pop dpl
                                    466 ;	eliminated unneeded push/pop dph
                                    467 ;	eliminated unneeded push/pop b
                                    468 ;	eliminated unneeded push/pop acc
                                    469 ;------------------------------------------------------------
                                    470 ;Allocation info for local variables in function 'usart0'
                                    471 ;------------------------------------------------------------
                           000010   472 	G$usart0$0$0 ==.
                           000010   473 	C$interrupts.c$93$1_0$51 ==.
                                    474 ;	interrupts.c:93: void usart0 (void) __interrupt (4) {}
                                    475 ;	-----------------------------------------
                                    476 ;	 function usart0
                                    477 ;	-----------------------------------------
      00019D                        478 _usart0:
                           000010   479 	C$interrupts.c$93$1_0$51 ==.
                           000010   480 	XG$usart0$0$0 ==.
      00019D 32               [24]  481 	reti
                                    482 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    483 ;	eliminated unneeded push/pop not_psw
                                    484 ;	eliminated unneeded push/pop dpl
                                    485 ;	eliminated unneeded push/pop dph
                                    486 ;	eliminated unneeded push/pop b
                                    487 ;	eliminated unneeded push/pop acc
                                    488 ;------------------------------------------------------------
                                    489 ;Allocation info for local variables in function 'tim2'
                                    490 ;------------------------------------------------------------
                           000011   491 	G$tim2$0$0 ==.
                           000011   492 	C$interrupts.c$94$1_0$54 ==.
                                    493 ;	interrupts.c:94: void tim2 (void) __interrupt (5) {}
                                    494 ;	-----------------------------------------
                                    495 ;	 function tim2
                                    496 ;	-----------------------------------------
      00019E                        497 _tim2:
                           000011   498 	C$interrupts.c$94$1_0$54 ==.
                           000011   499 	XG$tim2$0$0 ==.
      00019E 32               [24]  500 	reti
                                    501 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    502 ;	eliminated unneeded push/pop not_psw
                                    503 ;	eliminated unneeded push/pop dpl
                                    504 ;	eliminated unneeded push/pop dph
                                    505 ;	eliminated unneeded push/pop b
                                    506 ;	eliminated unneeded push/pop acc
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'res'
                                    509 ;------------------------------------------------------------
                           000012   510 	G$res$0$0 ==.
                           000012   511 	C$interrupts.c$95$1_0$57 ==.
                                    512 ;	interrupts.c:95: void res (void) __interrupt (6) {}
                                    513 ;	-----------------------------------------
                                    514 ;	 function res
                                    515 ;	-----------------------------------------
      00019F                        516 _res:
                           000012   517 	C$interrupts.c$95$1_0$57 ==.
                           000012   518 	XG$res$0$0 ==.
      00019F 32               [24]  519 	reti
                                    520 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    521 ;	eliminated unneeded push/pop not_psw
                                    522 ;	eliminated unneeded push/pop dpl
                                    523 ;	eliminated unneeded push/pop dph
                                    524 ;	eliminated unneeded push/pop b
                                    525 ;	eliminated unneeded push/pop acc
                                    526 ;------------------------------------------------------------
                                    527 ;Allocation info for local variables in function 'usart1'
                                    528 ;------------------------------------------------------------
                           000013   529 	G$usart1$0$0 ==.
                           000013   530 	C$interrupts.c$96$1_0$60 ==.
                                    531 ;	interrupts.c:96: void usart1 (void) __interrupt (7) {}
                                    532 ;	-----------------------------------------
                                    533 ;	 function usart1
                                    534 ;	-----------------------------------------
      0001A0                        535 _usart1:
                           000013   536 	C$interrupts.c$96$1_0$60 ==.
                           000013   537 	XG$usart1$0$0 ==.
      0001A0 32               [24]  538 	reti
                                    539 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    540 ;	eliminated unneeded push/pop not_psw
                                    541 ;	eliminated unneeded push/pop dpl
                                    542 ;	eliminated unneeded push/pop dph
                                    543 ;	eliminated unneeded push/pop b
                                    544 ;	eliminated unneeded push/pop acc
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'usb'
                                    547 ;------------------------------------------------------------
                           000014   548 	G$usb$0$0 ==.
                           000014   549 	C$interrupts.c$97$1_0$63 ==.
                                    550 ;	interrupts.c:97: void usb (void) __interrupt (8) {}
                                    551 ;	-----------------------------------------
                                    552 ;	 function usb
                                    553 ;	-----------------------------------------
      0001A1                        554 _usb:
                           000014   555 	C$interrupts.c$97$1_0$63 ==.
                           000014   556 	XG$usb$0$0 ==.
      0001A1 32               [24]  557 	reti
                                    558 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    559 ;	eliminated unneeded push/pop not_psw
                                    560 ;	eliminated unneeded push/pop dpl
                                    561 ;	eliminated unneeded push/pop dph
                                    562 ;	eliminated unneeded push/pop b
                                    563 ;	eliminated unneeded push/pop acc
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'i2c'
                                    566 ;------------------------------------------------------------
                           000015   567 	G$i2c$0$0 ==.
                           000015   568 	C$interrupts.c$98$1_0$66 ==.
                                    569 ;	interrupts.c:98: void i2c (void) __interrupt (9) {}
                                    570 ;	-----------------------------------------
                                    571 ;	 function i2c
                                    572 ;	-----------------------------------------
      0001A2                        573 _i2c:
                           000015   574 	C$interrupts.c$98$1_0$66 ==.
                           000015   575 	XG$i2c$0$0 ==.
      0001A2 32               [24]  576 	reti
                                    577 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    578 ;	eliminated unneeded push/pop not_psw
                                    579 ;	eliminated unneeded push/pop dpl
                                    580 ;	eliminated unneeded push/pop dph
                                    581 ;	eliminated unneeded push/pop b
                                    582 ;	eliminated unneeded push/pop acc
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'int4'
                                    585 ;------------------------------------------------------------
                           000016   586 	G$int4$0$0 ==.
                           000016   587 	C$interrupts.c$99$1_0$69 ==.
                                    588 ;	interrupts.c:99: void int4 (void) __interrupt (10) {}
                                    589 ;	-----------------------------------------
                                    590 ;	 function int4
                                    591 ;	-----------------------------------------
      0001A3                        592 _int4:
                           000016   593 	C$interrupts.c$99$1_0$69 ==.
                           000016   594 	XG$int4$0$0 ==.
      0001A3 32               [24]  595 	reti
                                    596 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    597 ;	eliminated unneeded push/pop not_psw
                                    598 ;	eliminated unneeded push/pop dpl
                                    599 ;	eliminated unneeded push/pop dph
                                    600 ;	eliminated unneeded push/pop b
                                    601 ;	eliminated unneeded push/pop acc
                                    602 ;------------------------------------------------------------
                                    603 ;Allocation info for local variables in function 'int5'
                                    604 ;------------------------------------------------------------
                           000017   605 	G$int5$0$0 ==.
                           000017   606 	C$interrupts.c$100$1_0$72 ==.
                                    607 ;	interrupts.c:100: void int5 (void) __interrupt (11) {}
                                    608 ;	-----------------------------------------
                                    609 ;	 function int5
                                    610 ;	-----------------------------------------
      0001A4                        611 _int5:
                           000017   612 	C$interrupts.c$100$1_0$72 ==.
                           000017   613 	XG$int5$0$0 ==.
      0001A4 32               [24]  614 	reti
                                    615 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    616 ;	eliminated unneeded push/pop not_psw
                                    617 ;	eliminated unneeded push/pop dpl
                                    618 ;	eliminated unneeded push/pop dph
                                    619 ;	eliminated unneeded push/pop b
                                    620 ;	eliminated unneeded push/pop acc
                                    621 ;------------------------------------------------------------
                                    622 ;Allocation info for local variables in function 'int6'
                                    623 ;------------------------------------------------------------
                           000018   624 	G$int6$0$0 ==.
                           000018   625 	C$interrupts.c$101$1_0$75 ==.
                                    626 ;	interrupts.c:101: void int6 (void) __interrupt (12) {}
                                    627 ;	-----------------------------------------
                                    628 ;	 function int6
                                    629 ;	-----------------------------------------
      0001A5                        630 _int6:
                           000018   631 	C$interrupts.c$101$1_0$75 ==.
                           000018   632 	XG$int6$0$0 ==.
      0001A5 32               [24]  633 	reti
                                    634 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    635 ;	eliminated unneeded push/pop not_psw
                                    636 ;	eliminated unneeded push/pop dpl
                                    637 ;	eliminated unneeded push/pop dph
                                    638 ;	eliminated unneeded push/pop b
                                    639 ;	eliminated unneeded push/pop acc
                                    640 ;------------------------------------------------------------
                                    641 ;Allocation info for local variables in function 'validEP'
                                    642 ;------------------------------------------------------------
                                    643 ;adrr                      Allocated to registers 
                                    644 ;------------------------------------------------------------
                           000019   645 	G$validEP$0$0 ==.
                           000019   646 	C$interrupts.c$103$1_0$77 ==.
                                    647 ;	interrupts.c:103: void validEP (unsigned char adrr)
                                    648 ;	-----------------------------------------
                                    649 ;	 function validEP
                                    650 ;	-----------------------------------------
      0001A6                        651 _validEP:
                           000019   652 	C$interrupts.c$105$1_0$77 ==.
                                    653 ;	interrupts.c:105: if (adrr == 0x01)
                           000019   654 	C$interrupts.c$109$1_0$77 ==.
                                    655 ;	interrupts.c:109: }
                           000019   656 	C$interrupts.c$109$1_0$77 ==.
                           000019   657 	XG$validEP$0$0 ==.
      0001A6 22               [24]  658 	ret
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'get_status'
                                    661 ;------------------------------------------------------------
                           00001A   662 	G$get_status$0$0 ==.
                           00001A   663 	C$interrupts.c$112$1_0$80 ==.
                                    664 ;	interrupts.c:112: void get_status (void) {
                                    665 ;	-----------------------------------------
                                    666 ;	 function get_status
                                    667 ;	-----------------------------------------
      0001A7                        668 _get_status:
                           00001A   669 	C$interrupts.c$113$1_0$80 ==.
                                    670 ;	interrupts.c:113: return;}
                           00001A   671 	C$interrupts.c$113$1_0$80 ==.
                           00001A   672 	XG$get_status$0$0 ==.
      0001A7 22               [24]  673 	ret
                                    674 ;------------------------------------------------------------
                                    675 ;Allocation info for local variables in function 'clear_feature'
                                    676 ;------------------------------------------------------------
                           00001B   677 	G$clear_feature$0$0 ==.
                           00001B   678 	C$interrupts.c$114$1_0$82 ==.
                                    679 ;	interrupts.c:114: void clear_feature (void) {
                                    680 ;	-----------------------------------------
                                    681 ;	 function clear_feature
                                    682 ;	-----------------------------------------
      0001A8                        683 _clear_feature:
                           00001B   684 	C$interrupts.c$115$1_0$82 ==.
                                    685 ;	interrupts.c:115: return;}
                           00001B   686 	C$interrupts.c$115$1_0$82 ==.
                           00001B   687 	XG$clear_feature$0$0 ==.
      0001A8 22               [24]  688 	ret
                                    689 ;------------------------------------------------------------
                                    690 ;Allocation info for local variables in function 'reserve'
                                    691 ;------------------------------------------------------------
                           00001C   692 	G$reserve$0$0 ==.
                           00001C   693 	C$interrupts.c$116$1_0$84 ==.
                                    694 ;	interrupts.c:116: void reserve (void)
                                    695 ;	-----------------------------------------
                                    696 ;	 function reserve
                                    697 ;	-----------------------------------------
      0001A9                        698 _reserve:
                           00001C   699 	C$interrupts.c$118$1_0$84 ==.
                                    700 ;	interrupts.c:118: flagStallEP0 = 1;
                                    701 ;	assignBit
      0001A9 D2 00            [12]  702 	setb	_flagStallEP0
                           00001E   703 	C$interrupts.c$119$1_0$84 ==.
                                    704 ;	interrupts.c:119: return;
                           00001E   705 	C$interrupts.c$120$1_0$84 ==.
                                    706 ;	interrupts.c:120: }
                           00001E   707 	C$interrupts.c$120$1_0$84 ==.
                           00001E   708 	XG$reserve$0$0 ==.
      0001AB 22               [24]  709 	ret
                                    710 ;------------------------------------------------------------
                                    711 ;Allocation info for local variables in function 'set_feature'
                                    712 ;------------------------------------------------------------
                           00001F   713 	G$set_feature$0$0 ==.
                           00001F   714 	C$interrupts.c$121$1_0$86 ==.
                                    715 ;	interrupts.c:121: void set_feature (void) {
                                    716 ;	-----------------------------------------
                                    717 ;	 function set_feature
                                    718 ;	-----------------------------------------
      0001AC                        719 _set_feature:
                           00001F   720 	C$interrupts.c$122$1_0$86 ==.
                                    721 ;	interrupts.c:122: return;}
                           00001F   722 	C$interrupts.c$122$1_0$86 ==.
                           00001F   723 	XG$set_feature$0$0 ==.
      0001AC 22               [24]  724 	ret
                                    725 ;------------------------------------------------------------
                                    726 ;Allocation info for local variables in function 'set_adr'
                                    727 ;------------------------------------------------------------
                           000020   728 	G$set_adr$0$0 ==.
                           000020   729 	C$interrupts.c$123$1_0$88 ==.
                                    730 ;	interrupts.c:123: void set_adr (void) {
                                    731 ;	-----------------------------------------
                                    732 ;	 function set_adr
                                    733 ;	-----------------------------------------
      0001AD                        734 _set_adr:
                           000020   735 	C$interrupts.c$124$1_0$88 ==.
                                    736 ;	interrupts.c:124: return;}
                           000020   737 	C$interrupts.c$124$1_0$88 ==.
                           000020   738 	XG$set_adr$0$0 ==.
      0001AD 22               [24]  739 	ret
                                    740 ;------------------------------------------------------------
                                    741 ;Allocation info for local variables in function 'get_descriptor'
                                    742 ;------------------------------------------------------------
                                    743 ;pData                     Allocated to registers 
                                    744 ;i                         Allocated to registers r6 
                                    745 ;------------------------------------------------------------
                           000021   746 	G$get_descriptor$0$0 ==.
                           000021   747 	C$interrupts.c$125$1_0$90 ==.
                                    748 ;	interrupts.c:125: void get_descriptor (void)
                                    749 ;	-----------------------------------------
                                    750 ;	 function get_descriptor
                                    751 ;	-----------------------------------------
      0001AE                        752 _get_descriptor:
                           000021   753 	C$interrupts.c$127$1_0$90 ==.
                                    754 ;	interrupts.c:127: if (ptr_dat[bmR] != 0x80)// проверка типа запроса, что запрос типа in
      0001AE 85 21 82         [24]  755 	mov	dpl,_ptr_dat
      0001B1 85 22 83         [24]  756 	mov	dph,(_ptr_dat + 1)
      0001B4 E0               [24]  757 	movx	a,@dptr
      0001B5 FF               [12]  758 	mov	r7,a
      0001B6 BF 80 02         [24]  759 	cjne	r7,#0x80,00193$
      0001B9 80 05            [24]  760 	sjmp	00102$
      0001BB                        761 00193$:
                           00002E   762 	C$interrupts.c$129$2_0$91 ==.
                                    763 ;	interrupts.c:129: flagStallEP0 = 1;
                                    764 ;	assignBit
      0001BB D2 00            [12]  765 	setb	_flagStallEP0
                           000030   766 	C$interrupts.c$130$2_0$91 ==.
                                    767 ;	interrupts.c:130: return;// выход с ошибкой
      0001BD 02 03 1B         [24]  768 	ljmp	00130$
      0001C0                        769 00102$:
                           000033   770 	C$interrupts.c$132$1_0$90 ==.
                                    771 ;	interrupts.c:132: if ((ptr_dat[wVH] != 0x01) && (ptr_dat[wVH] != 0x02) && (ptr_dat[wVH] != 0x03))// проверка на get descriptor
      0001C0 85 21 82         [24]  772 	mov	dpl,_ptr_dat
      0001C3 85 22 83         [24]  773 	mov	dph,(_ptr_dat + 1)
      0001C6 A3               [24]  774 	inc	dptr
      0001C7 A3               [24]  775 	inc	dptr
      0001C8 A3               [24]  776 	inc	dptr
      0001C9 E0               [24]  777 	movx	a,@dptr
      0001CA FF               [12]  778 	mov	r7,a
      0001CB BF 01 02         [24]  779 	cjne	r7,#0x01,00194$
      0001CE 80 0F            [24]  780 	sjmp	00104$
      0001D0                        781 00194$:
      0001D0 BF 02 02         [24]  782 	cjne	r7,#0x02,00195$
      0001D3 80 0A            [24]  783 	sjmp	00104$
      0001D5                        784 00195$:
      0001D5 BF 03 02         [24]  785 	cjne	r7,#0x03,00196$
      0001D8 80 05            [24]  786 	sjmp	00104$
      0001DA                        787 00196$:
                           00004D   788 	C$interrupts.c$134$2_0$92 ==.
                                    789 ;	interrupts.c:134: flagStallEP0 = 1;
                                    790 ;	assignBit
      0001DA D2 00            [12]  791 	setb	_flagStallEP0
                           00004F   792 	C$interrupts.c$135$2_0$92 ==.
                                    793 ;	interrupts.c:135: return;// выход с ошибкой
      0001DC 02 03 1B         [24]  794 	ljmp	00130$
      0001DF                        795 00104$:
                           000052   796 	C$interrupts.c$137$1_0$90 ==.
                                    797 ;	interrupts.c:137: if (ptr_dat[wVH] == 0x01)// дескриптор device
      0001DF BF 01 02         [24]  798 	cjne	r7,#0x01,00197$
      0001E2 80 03            [24]  799 	sjmp	00198$
      0001E4                        800 00197$:
      0001E4 02 02 65         [24]  801 	ljmp	00112$
      0001E7                        802 00198$:
                           00005A   803 	C$interrupts.c$139$2_0$93 ==.
                                    804 ;	interrupts.c:139: if ((ptr_dat[wVL] | ptr_dat[wIL] | ptr_dat[wIH]))// проверка на корректный формат требований
      0001E7 85 21 82         [24]  805 	mov	dpl,_ptr_dat
      0001EA 85 22 83         [24]  806 	mov	dph,(_ptr_dat + 1)
      0001ED A3               [24]  807 	inc	dptr
      0001EE A3               [24]  808 	inc	dptr
      0001EF E0               [24]  809 	movx	a,@dptr
      0001F0 FE               [12]  810 	mov	r6,a
      0001F1 85 21 82         [24]  811 	mov	dpl,_ptr_dat
      0001F4 85 22 83         [24]  812 	mov	dph,(_ptr_dat + 1)
      0001F7 A3               [24]  813 	inc	dptr
      0001F8 A3               [24]  814 	inc	dptr
      0001F9 A3               [24]  815 	inc	dptr
      0001FA A3               [24]  816 	inc	dptr
      0001FB E0               [24]  817 	movx	a,@dptr
      0001FC 42 06            [12]  818 	orl	ar6,a
      0001FE 85 21 82         [24]  819 	mov	dpl,_ptr_dat
      000201 85 22 83         [24]  820 	mov	dph,(_ptr_dat + 1)
      000204 A3               [24]  821 	inc	dptr
      000205 A3               [24]  822 	inc	dptr
      000206 A3               [24]  823 	inc	dptr
      000207 A3               [24]  824 	inc	dptr
      000208 A3               [24]  825 	inc	dptr
      000209 E0               [24]  826 	movx	a,@dptr
      00020A FD               [12]  827 	mov	r5,a
      00020B 4E               [12]  828 	orl	a,r6
      00020C 60 05            [24]  829 	jz	00109$
                           000081   830 	C$interrupts.c$141$3_0$94 ==.
                                    831 ;	interrupts.c:141: flagStallEP0 = 1;
                                    832 ;	assignBit
      00020E D2 00            [12]  833 	setb	_flagStallEP0
                           000083   834 	C$interrupts.c$142$3_0$94 ==.
                                    835 ;	interrupts.c:142: return;// выход с ошибкой
      000210 02 03 1B         [24]  836 	ljmp	00130$
      000213                        837 00109$:
                           000086   838 	C$interrupts.c$147$3_0$95 ==.
                                    839 ;	interrupts.c:147: SUDPTRCTL = 0x01;// должна быть 1 даже для ручной передачи дескрипторов (page 331)
      000213 90 E6 B5         [24]  840 	mov	dptr,#_SUDPTRCTL
      000216 74 01            [12]  841 	mov	a,#0x01
      000218 F0               [24]  842 	movx	@dptr,a
                           00008C   843 	C$interrupts.c$150$4_1$97 ==.
                                    844 ;	interrupts.c:150: for (unsigned char i = 0; i < descr[0]; i++)// переписываем дескриптор в ep0buf
      000219 7E 00            [12]  845 	mov	r6,#0x00
      00021B                        846 00128$:
      00021B 90 04 DE         [24]  847 	mov	dptr,#_descr
      00021E E4               [12]  848 	clr	a
      00021F 93               [24]  849 	movc	a,@a+dptr
      000220 FD               [12]  850 	mov	r5,a
      000221 C3               [12]  851 	clr	c
      000222 EE               [12]  852 	mov	a,r6
      000223 9D               [12]  853 	subb	a,r5
      000224 50 16            [24]  854 	jnc	00107$
                           000099   855 	C$interrupts.c$152$5_1$98 ==.
                                    856 ;	interrupts.c:152: pData[i] = descr[i];
      000226 74 40            [12]  857 	mov	a,#0x40
      000228 2E               [12]  858 	add	a,r6
      000229 FC               [12]  859 	mov	r4,a
      00022A E4               [12]  860 	clr	a
      00022B 34 E7            [12]  861 	addc	a,#0xe7
      00022D FD               [12]  862 	mov	r5,a
      00022E EE               [12]  863 	mov	a,r6
      00022F 90 04 DE         [24]  864 	mov	dptr,#_descr
      000232 93               [24]  865 	movc	a,@a+dptr
      000233 FB               [12]  866 	mov	r3,a
      000234 8C 82            [24]  867 	mov	dpl,r4
      000236 8D 83            [24]  868 	mov	dph,r5
      000238 F0               [24]  869 	movx	@dptr,a
                           0000AC   870 	C$interrupts.c$150$4_1$97 ==.
                                    871 ;	interrupts.c:150: for (unsigned char i = 0; i < descr[0]; i++)// переписываем дескриптор в ep0buf
      000239 0E               [12]  872 	inc	r6
      00023A 80 DF            [24]  873 	sjmp	00128$
      00023C                        874 00107$:
                           0000AF   875 	C$interrupts.c$154$3_1$96 ==.
                                    876 ;	interrupts.c:154: sync_delay();
      00023C 12 01 1B         [24]  877 	lcall	_sync_delay
                           0000B2   878 	C$interrupts.c$155$3_1$96 ==.
                                    879 ;	interrupts.c:155: EP0BCH = 0x00;
      00023F 90 E6 8A         [24]  880 	mov	dptr,#_EP0BCH
      000242 E4               [12]  881 	clr	a
      000243 F0               [24]  882 	movx	@dptr,a
                           0000B7   883 	C$interrupts.c$156$3_1$96 ==.
                                    884 ;	interrupts.c:156: sync_delay();
      000244 12 01 1B         [24]  885 	lcall	_sync_delay
                           0000BA   886 	C$interrupts.c$157$3_1$96 ==.
                                    887 ;	interrupts.c:157: EP0BCL = ptr_setupdat[wLL];
      000247 85 25 82         [24]  888 	mov	dpl,_ptr_setupdat
      00024A 85 26 83         [24]  889 	mov	dph,(_ptr_setupdat + 1)
      00024D A3               [24]  890 	inc	dptr
      00024E A3               [24]  891 	inc	dptr
      00024F A3               [24]  892 	inc	dptr
      000250 A3               [24]  893 	inc	dptr
      000251 A3               [24]  894 	inc	dptr
      000252 A3               [24]  895 	inc	dptr
      000253 E0               [24]  896 	movx	a,@dptr
      000254 90 E6 8B         [24]  897 	mov	dptr,#_EP0BCL
      000257 F0               [24]  898 	movx	@dptr,a
                           0000CB   899 	C$interrupts.c$158$3_1$96 ==.
                                    900 ;	interrupts.c:158: sync_delay();
      000258 12 01 1B         [24]  901 	lcall	_sync_delay
                           0000CE   902 	C$interrupts.c$159$3_1$96 ==.
                                    903 ;	interrupts.c:159: SUDPTRCTL = 0x00;
      00025B 90 E6 B5         [24]  904 	mov	dptr,#_SUDPTRCTL
      00025E E4               [12]  905 	clr	a
      00025F F0               [24]  906 	movx	@dptr,a
                           0000D3   907 	C$interrupts.c$160$3_1$96 ==.
                                    908 ;	interrupts.c:160: flagGetDesc = 1;
                                    909 ;	assignBit
      000260 D2 01            [12]  910 	setb	_flagGetDesc
                           0000D5   911 	C$interrupts.c$161$3_1$96 ==.
                                    912 ;	interrupts.c:161: return;
      000262 02 03 1B         [24]  913 	ljmp	00130$
      000265                        914 00112$:
                           0000D8   915 	C$interrupts.c$164$1_0$90 ==.
                                    916 ;	interrupts.c:164: if (ptr_dat[wVH] == 0x02)// дескриптор configuration
      000265 BF 02 45         [24]  917 	cjne	r7,#0x02,00117$
                           0000DB   918 	C$interrupts.c$166$2_0$99 ==.
                                    919 ;	interrupts.c:166: SUDPTRCTL = 0x01;
      000268 90 E6 B5         [24]  920 	mov	dptr,#_SUDPTRCTL
      00026B 74 01            [12]  921 	mov	a,#0x01
      00026D F0               [24]  922 	movx	@dptr,a
                           0000E1   923 	C$interrupts.c$167$2_0$99 ==.
                                    924 ;	interrupts.c:167: if (ptr_dat[wVL] | ptr_dat[wIH] | ptr_dat[wIL])// проверили на равенство 0
      00026E 85 21 82         [24]  925 	mov	dpl,_ptr_dat
      000271 85 22 83         [24]  926 	mov	dph,(_ptr_dat + 1)
      000274 A3               [24]  927 	inc	dptr
      000275 A3               [24]  928 	inc	dptr
      000276 E0               [24]  929 	movx	a,@dptr
      000277 FE               [12]  930 	mov	r6,a
      000278 85 21 82         [24]  931 	mov	dpl,_ptr_dat
      00027B 85 22 83         [24]  932 	mov	dph,(_ptr_dat + 1)
      00027E A3               [24]  933 	inc	dptr
      00027F A3               [24]  934 	inc	dptr
      000280 A3               [24]  935 	inc	dptr
      000281 A3               [24]  936 	inc	dptr
      000282 A3               [24]  937 	inc	dptr
      000283 E0               [24]  938 	movx	a,@dptr
      000284 42 06            [12]  939 	orl	ar6,a
      000286 85 21 82         [24]  940 	mov	dpl,_ptr_dat
      000289 85 22 83         [24]  941 	mov	dph,(_ptr_dat + 1)
      00028C A3               [24]  942 	inc	dptr
      00028D A3               [24]  943 	inc	dptr
      00028E A3               [24]  944 	inc	dptr
      00028F A3               [24]  945 	inc	dptr
      000290 E0               [24]  946 	movx	a,@dptr
      000291 FD               [12]  947 	mov	r5,a
      000292 4E               [12]  948 	orl	a,r6
      000293 60 05            [24]  949 	jz	00114$
                           000108   950 	C$interrupts.c$169$3_0$100 ==.
                                    951 ;	interrupts.c:169: flagStallEP0 = 1;
                                    952 ;	assignBit
      000295 D2 00            [12]  953 	setb	_flagStallEP0
                           00010A   954 	C$interrupts.c$170$3_0$100 ==.
                                    955 ;	interrupts.c:170: return;// выход с ошибкой
      000297 02 03 1B         [24]  956 	ljmp	00130$
      00029A                        957 00114$:
                           00010D   958 	C$interrupts.c$174$3_0$101 ==.
                                    959 ;	interrupts.c:174: SUDPTRL = (unsigned char) configuration0 & 0xff;
      00029A 90 E6 B4         [24]  960 	mov	dptr,#_SUDPTRL
      00029D 74 F0            [12]  961 	mov	a,#_configuration0
      00029F F0               [24]  962 	movx	@dptr,a
                           000113   963 	C$interrupts.c$175$3_0$101 ==.
                                    964 ;	interrupts.c:175: SUDPTRH =  ((unsigned short) configuration0) >> 8;
      0002A0 7D F0            [12]  965 	mov	r5,#_configuration0
      0002A2 7E 04            [12]  966 	mov	r6,#(_configuration0 >> 8)
      0002A4 90 E6 B3         [24]  967 	mov	dptr,#_SUDPTRH
      0002A7 EE               [12]  968 	mov	a,r6
      0002A8 F0               [24]  969 	movx	@dptr,a
                           00011C   970 	C$interrupts.c$176$3_0$101 ==.
                                    971 ;	interrupts.c:176: flagGetDesc = 1;
                                    972 ;	assignBit
      0002A9 D2 01            [12]  973 	setb	_flagGetDesc
                           00011E   974 	C$interrupts.c$177$3_0$101 ==.
                                    975 ;	interrupts.c:177: return;
      0002AB 80 6E            [24]  976 	sjmp	00130$
      0002AD                        977 00117$:
                           000120   978 	C$interrupts.c$180$1_0$90 ==.
                                    979 ;	interrupts.c:180: if (ptr_dat[wVH] == 0x03)
      0002AD BF 03 6B         [24]  980 	cjne	r7,#0x03,00130$
                           000123   981 	C$interrupts.c$182$2_0$102 ==.
                                    982 ;	interrupts.c:182: if ((!(ptr_dat[wIH])) && (!(ptr_dat[wIL])))// проверка требования 0-й строки
      0002B0 74 05            [12]  983 	mov	a,#0x05
      0002B2 25 21            [12]  984 	add	a,_ptr_dat
      0002B4 FE               [12]  985 	mov	r6,a
      0002B5 E4               [12]  986 	clr	a
      0002B6 35 22            [12]  987 	addc	a,(_ptr_dat + 1)
      0002B8 FF               [12]  988 	mov	r7,a
      0002B9 8E 82            [24]  989 	mov	dpl,r6
      0002BB 8F 83            [24]  990 	mov	dph,r7
      0002BD E0               [24]  991 	movx	a,@dptr
      0002BE 70 23            [24]  992 	jnz	00119$
      0002C0 74 04            [12]  993 	mov	a,#0x04
      0002C2 25 21            [12]  994 	add	a,_ptr_dat
      0002C4 FE               [12]  995 	mov	r6,a
      0002C5 E4               [12]  996 	clr	a
      0002C6 35 22            [12]  997 	addc	a,(_ptr_dat + 1)
      0002C8 FF               [12]  998 	mov	r7,a
      0002C9 8E 82            [24]  999 	mov	dpl,r6
      0002CB 8F 83            [24] 1000 	mov	dph,r7
      0002CD E0               [24] 1001 	movx	a,@dptr
      0002CE 70 13            [24] 1002 	jnz	00119$
                           000143  1003 	C$interrupts.c$184$3_0$103 ==.
                                   1004 ;	interrupts.c:184: SUDPTRL = (unsigned char) string0 & 0xff;
      0002D0 90 E6 B4         [24] 1005 	mov	dptr,#_SUDPTRL
      0002D3 74 10            [12] 1006 	mov	a,#_string0
      0002D5 F0               [24] 1007 	movx	@dptr,a
                           000149  1008 	C$interrupts.c$185$3_0$103 ==.
                                   1009 ;	interrupts.c:185: SUDPTRH =  ((unsigned short) string0) >> 8;
      0002D6 7E 10            [12] 1010 	mov	r6,#_string0
      0002D8 7F 05            [12] 1011 	mov	r7,#(_string0 >> 8)
      0002DA 90 E6 B3         [24] 1012 	mov	dptr,#_SUDPTRH
      0002DD EF               [12] 1013 	mov	a,r7
      0002DE F0               [24] 1014 	movx	@dptr,a
                           000152  1015 	C$interrupts.c$186$3_0$103 ==.
                                   1016 ;	interrupts.c:186: flagGetDesc = 1;
                                   1017 ;	assignBit
      0002DF D2 01            [12] 1018 	setb	_flagGetDesc
                           000154  1019 	C$interrupts.c$187$3_0$103 ==.
                                   1020 ;	interrupts.c:187: return;
      0002E1 80 38            [24] 1021 	sjmp	00130$
      0002E3                       1022 00119$:
                           000156  1023 	C$interrupts.c$189$2_0$102 ==.
                                   1024 ;	interrupts.c:189: if (ptr_dat[wVL] == 0x01)// строка производителя
      0002E3 85 21 82         [24] 1025 	mov	dpl,_ptr_dat
      0002E6 85 22 83         [24] 1026 	mov	dph,(_ptr_dat + 1)
      0002E9 A3               [24] 1027 	inc	dptr
      0002EA A3               [24] 1028 	inc	dptr
      0002EB E0               [24] 1029 	movx	a,@dptr
      0002EC FF               [12] 1030 	mov	r7,a
      0002ED BF 01 13         [24] 1031 	cjne	r7,#0x01,00122$
                           000163  1032 	C$interrupts.c$191$3_0$104 ==.
                                   1033 ;	interrupts.c:191: SUDPTRL = (unsigned char) string1 & 0xff;
      0002F0 90 E6 B4         [24] 1034 	mov	dptr,#_SUDPTRL
      0002F3 74 14            [12] 1035 	mov	a,#_string1
      0002F5 F0               [24] 1036 	movx	@dptr,a
                           000169  1037 	C$interrupts.c$192$3_0$104 ==.
                                   1038 ;	interrupts.c:192: SUDPTRH =  ((unsigned short) string1) >> 8;
      0002F6 7D 14            [12] 1039 	mov	r5,#_string1
      0002F8 7E 05            [12] 1040 	mov	r6,#(_string1 >> 8)
      0002FA 90 E6 B3         [24] 1041 	mov	dptr,#_SUDPTRH
      0002FD EE               [12] 1042 	mov	a,r6
      0002FE F0               [24] 1043 	movx	@dptr,a
                           000172  1044 	C$interrupts.c$193$3_0$104 ==.
                                   1045 ;	interrupts.c:193: flagGetDesc = 1;
                                   1046 ;	assignBit
      0002FF D2 01            [12] 1047 	setb	_flagGetDesc
                           000174  1048 	C$interrupts.c$194$3_0$104 ==.
                                   1049 ;	interrupts.c:194: return;
      000301 80 18            [24] 1050 	sjmp	00130$
      000303                       1051 00122$:
                           000176  1052 	C$interrupts.c$196$2_0$102 ==.
                                   1053 ;	interrupts.c:196: if (ptr_dat[wVL] == 0x02)// строка производителя
      000303 BF 02 13         [24] 1054 	cjne	r7,#0x02,00124$
                           000179  1055 	C$interrupts.c$198$3_0$105 ==.
                                   1056 ;	interrupts.c:198: SUDPTRL = (unsigned char) string2 & 0xff;
      000306 90 E6 B4         [24] 1057 	mov	dptr,#_SUDPTRL
      000309 74 20            [12] 1058 	mov	a,#_string2
      00030B F0               [24] 1059 	movx	@dptr,a
                           00017F  1060 	C$interrupts.c$199$3_0$105 ==.
                                   1061 ;	interrupts.c:199: SUDPTRH =  ((unsigned short) string2) >> 8;
      00030C 7E 20            [12] 1062 	mov	r6,#_string2
      00030E 7F 05            [12] 1063 	mov	r7,#(_string2 >> 8)
      000310 90 E6 B3         [24] 1064 	mov	dptr,#_SUDPTRH
      000313 EF               [12] 1065 	mov	a,r7
      000314 F0               [24] 1066 	movx	@dptr,a
                           000188  1067 	C$interrupts.c$200$3_0$105 ==.
                                   1068 ;	interrupts.c:200: flagGetDesc = 1;
                                   1069 ;	assignBit
      000315 D2 01            [12] 1070 	setb	_flagGetDesc
                           00018A  1071 	C$interrupts.c$201$3_0$105 ==.
                                   1072 ;	interrupts.c:201: return;
      000317 80 02            [24] 1073 	sjmp	00130$
      000319                       1074 00124$:
                           00018C  1075 	C$interrupts.c$203$2_0$102 ==.
                                   1076 ;	interrupts.c:203: flagStallEP0 = 1;
                                   1077 ;	assignBit
      000319 D2 00            [12] 1078 	setb	_flagStallEP0
                           00018E  1079 	C$interrupts.c$204$2_0$102 ==.
                                   1080 ;	interrupts.c:204: return;// выход с ошибкой
      00031B                       1081 00130$:
                           00018E  1082 	C$interrupts.c$206$1_0$90 ==.
                                   1083 ;	interrupts.c:206: }
                           00018E  1084 	C$interrupts.c$206$1_0$90 ==.
                           00018E  1085 	XG$get_descriptor$0$0 ==.
      00031B 22               [24] 1086 	ret
                                   1087 ;------------------------------------------------------------
                                   1088 ;Allocation info for local variables in function 'set_descriptor'
                                   1089 ;------------------------------------------------------------
                           00018F  1090 	G$set_descriptor$0$0 ==.
                           00018F  1091 	C$interrupts.c$208$1_0$107 ==.
                                   1092 ;	interrupts.c:208: void set_descriptor (void) {
                                   1093 ;	-----------------------------------------
                                   1094 ;	 function set_descriptor
                                   1095 ;	-----------------------------------------
      00031C                       1096 _set_descriptor:
                           00018F  1097 	C$interrupts.c$209$1_0$107 ==.
                                   1098 ;	interrupts.c:209: flagStallEP0 = 1;
                                   1099 ;	assignBit
      00031C D2 00            [12] 1100 	setb	_flagStallEP0
                           000191  1101 	C$interrupts.c$210$1_0$107 ==.
                                   1102 ;	interrupts.c:210: return;}
                           000191  1103 	C$interrupts.c$210$1_0$107 ==.
                           000191  1104 	XG$set_descriptor$0$0 ==.
      00031E 22               [24] 1105 	ret
                                   1106 ;------------------------------------------------------------
                                   1107 ;Allocation info for local variables in function 'get_configurated'
                                   1108 ;------------------------------------------------------------
                           000192  1109 	G$get_configurated$0$0 ==.
                           000192  1110 	C$interrupts.c$211$1_0$109 ==.
                                   1111 ;	interrupts.c:211: void get_configurated (void) {return;}
                                   1112 ;	-----------------------------------------
                                   1113 ;	 function get_configurated
                                   1114 ;	-----------------------------------------
      00031F                       1115 _get_configurated:
                           000192  1116 	C$interrupts.c$211$1_0$109 ==.
                           000192  1117 	XG$get_configurated$0$0 ==.
      00031F 22               [24] 1118 	ret
                                   1119 ;------------------------------------------------------------
                                   1120 ;Allocation info for local variables in function 'set_configurated'
                                   1121 ;------------------------------------------------------------
                           000193  1122 	G$set_configurated$0$0 ==.
                           000193  1123 	C$interrupts.c$212$1_0$111 ==.
                                   1124 ;	interrupts.c:212: void set_configurated (void)
                                   1125 ;	-----------------------------------------
                                   1126 ;	 function set_configurated
                                   1127 ;	-----------------------------------------
      000320                       1128 _set_configurated:
                           000193  1129 	C$interrupts.c$214$1_0$111 ==.
                                   1130 ;	interrupts.c:214: if (ptr_setupdat[bmR] | ptr_setupdat[wLL] | ptr_setupdat[wLH] | ptr_setupdat[wIL] | ptr_setupdat[wIH]
      000320 85 25 82         [24] 1131 	mov	dpl,_ptr_setupdat
      000323 85 26 83         [24] 1132 	mov	dph,(_ptr_setupdat + 1)
      000326 E0               [24] 1133 	movx	a,@dptr
      000327 FF               [12] 1134 	mov	r7,a
      000328 85 25 82         [24] 1135 	mov	dpl,_ptr_setupdat
      00032B 85 26 83         [24] 1136 	mov	dph,(_ptr_setupdat + 1)
      00032E A3               [24] 1137 	inc	dptr
      00032F A3               [24] 1138 	inc	dptr
      000330 A3               [24] 1139 	inc	dptr
      000331 A3               [24] 1140 	inc	dptr
      000332 A3               [24] 1141 	inc	dptr
      000333 A3               [24] 1142 	inc	dptr
      000334 E0               [24] 1143 	movx	a,@dptr
      000335 42 07            [12] 1144 	orl	ar7,a
      000337 85 25 82         [24] 1145 	mov	dpl,_ptr_setupdat
      00033A 85 26 83         [24] 1146 	mov	dph,(_ptr_setupdat + 1)
      00033D A3               [24] 1147 	inc	dptr
      00033E A3               [24] 1148 	inc	dptr
      00033F A3               [24] 1149 	inc	dptr
      000340 A3               [24] 1150 	inc	dptr
      000341 A3               [24] 1151 	inc	dptr
      000342 A3               [24] 1152 	inc	dptr
      000343 A3               [24] 1153 	inc	dptr
      000344 E0               [24] 1154 	movx	a,@dptr
      000345 42 07            [12] 1155 	orl	ar7,a
      000347 85 25 82         [24] 1156 	mov	dpl,_ptr_setupdat
      00034A 85 26 83         [24] 1157 	mov	dph,(_ptr_setupdat + 1)
      00034D A3               [24] 1158 	inc	dptr
      00034E A3               [24] 1159 	inc	dptr
      00034F A3               [24] 1160 	inc	dptr
      000350 A3               [24] 1161 	inc	dptr
      000351 E0               [24] 1162 	movx	a,@dptr
      000352 42 07            [12] 1163 	orl	ar7,a
      000354 85 25 82         [24] 1164 	mov	dpl,_ptr_setupdat
      000357 85 26 83         [24] 1165 	mov	dph,(_ptr_setupdat + 1)
      00035A A3               [24] 1166 	inc	dptr
      00035B A3               [24] 1167 	inc	dptr
      00035C A3               [24] 1168 	inc	dptr
      00035D A3               [24] 1169 	inc	dptr
      00035E A3               [24] 1170 	inc	dptr
      00035F E0               [24] 1171 	movx	a,@dptr
      000360 42 07            [12] 1172 	orl	ar7,a
                           0001D5  1173 	C$interrupts.c$215$1_0$111 ==.
                                   1174 ;	interrupts.c:215: | ptr_setupdat[wVH])// проверка корректности запроса
      000362 85 25 82         [24] 1175 	mov	dpl,_ptr_setupdat
      000365 85 26 83         [24] 1176 	mov	dph,(_ptr_setupdat + 1)
      000368 A3               [24] 1177 	inc	dptr
      000369 A3               [24] 1178 	inc	dptr
      00036A A3               [24] 1179 	inc	dptr
      00036B E0               [24] 1180 	movx	a,@dptr
      00036C FE               [12] 1181 	mov	r6,a
      00036D 4F               [12] 1182 	orl	a,r7
      00036E 60 04            [24] 1183 	jz	00102$
                           0001E3  1184 	C$interrupts.c$217$2_0$112 ==.
                                   1185 ;	interrupts.c:217: flagStallEP0 = 1;
                                   1186 ;	assignBit
      000370 D2 00            [12] 1187 	setb	_flagStallEP0
                           0001E5  1188 	C$interrupts.c$218$2_0$112 ==.
                                   1189 ;	interrupts.c:218: return;// выход с ошибкой
      000372 80 24            [24] 1190 	sjmp	00108$
      000374                       1191 00102$:
                           0001E7  1192 	C$interrupts.c$220$1_0$111 ==.
                                   1193 ;	interrupts.c:220: if (ptr_setupdat[wVL])// проверка конфигурации, пока поддерживается только 0-я и 1-я
      000374 74 02            [12] 1194 	mov	a,#0x02
      000376 25 25            [12] 1195 	add	a,_ptr_setupdat
      000378 FE               [12] 1196 	mov	r6,a
      000379 E4               [12] 1197 	clr	a
      00037A 35 26            [12] 1198 	addc	a,(_ptr_setupdat + 1)
      00037C FF               [12] 1199 	mov	r7,a
      00037D 8E 82            [24] 1200 	mov	dpl,r6
      00037F 8F 83            [24] 1201 	mov	dph,r7
      000381 E0               [24] 1202 	movx	a,@dptr
      000382 FD               [12] 1203 	mov	r5,a
      000383 60 13            [24] 1204 	jz	00108$
                           0001F8  1205 	C$interrupts.c$222$2_0$113 ==.
                                   1206 ;	interrupts.c:222: if (ptr_setupdat[wVL] != 0x01)
      000385 BD 01 02         [24] 1207 	cjne	r5,#0x01,00124$
      000388 80 04            [24] 1208 	sjmp	00104$
      00038A                       1209 00124$:
                           0001FD  1210 	C$interrupts.c$224$3_0$114 ==.
                                   1211 ;	interrupts.c:224: flagStallEP0 = 1;
                                   1212 ;	assignBit
      00038A D2 00            [12] 1213 	setb	_flagStallEP0
                           0001FF  1214 	C$interrupts.c$225$3_0$114 ==.
                                   1215 ;	interrupts.c:225: return;// выход с ошибкой
      00038C 80 0A            [24] 1216 	sjmp	00108$
      00038E                       1217 00104$:
                           000201  1218 	C$interrupts.c$229$3_0$115 ==.
                                   1219 ;	interrupts.c:229: flagCfgUsb = 1;
                                   1220 ;	assignBit
      00038E D2 02            [12] 1221 	setb	_flagCfgUsb
                           000203  1222 	C$interrupts.c$230$3_0$115 ==.
                                   1223 ;	interrupts.c:230: ptr_setupdat[wVL] = 0;
      000390 8E 82            [24] 1224 	mov	dpl,r6
      000392 8F 83            [24] 1225 	mov	dph,r7
      000394 E4               [12] 1226 	clr	a
      000395 F0               [24] 1227 	movx	@dptr,a
                           000209  1228 	C$interrupts.c$231$3_0$115 ==.
                                   1229 ;	interrupts.c:231: flagAltUsb = 0;
                                   1230 ;	assignBit
      000396 C2 03            [12] 1231 	clr	_flagAltUsb
      000398                       1232 00108$:
                           00020B  1233 	C$interrupts.c$235$1_0$111 ==.
                                   1234 ;	interrupts.c:235: }
                           00020B  1235 	C$interrupts.c$235$1_0$111 ==.
                           00020B  1236 	XG$set_configurated$0$0 ==.
      000398 22               [24] 1237 	ret
                                   1238 ;------------------------------------------------------------
                                   1239 ;Allocation info for local variables in function 'get_interface'
                                   1240 ;------------------------------------------------------------
                           00020C  1241 	G$get_interface$0$0 ==.
                           00020C  1242 	C$interrupts.c$236$1_0$117 ==.
                                   1243 ;	interrupts.c:236: void get_interface (void) {return;}
                                   1244 ;	-----------------------------------------
                                   1245 ;	 function get_interface
                                   1246 ;	-----------------------------------------
      000399                       1247 _get_interface:
                           00020C  1248 	C$interrupts.c$236$1_0$117 ==.
                           00020C  1249 	XG$get_interface$0$0 ==.
      000399 22               [24] 1250 	ret
                                   1251 ;------------------------------------------------------------
                                   1252 ;Allocation info for local variables in function 'set_interface'
                                   1253 ;------------------------------------------------------------
                           00020D  1254 	G$set_interface$0$0 ==.
                           00020D  1255 	C$interrupts.c$237$1_0$119 ==.
                                   1256 ;	interrupts.c:237: void set_interface (void) {return;}
                                   1257 ;	-----------------------------------------
                                   1258 ;	 function set_interface
                                   1259 ;	-----------------------------------------
      00039A                       1260 _set_interface:
                           00020D  1261 	C$interrupts.c$237$1_0$119 ==.
                           00020D  1262 	XG$set_interface$0$0 ==.
      00039A 22               [24] 1263 	ret
                                   1264 ;------------------------------------------------------------
                                   1265 ;Allocation info for local variables in function 'synch_frame'
                                   1266 ;------------------------------------------------------------
                           00020E  1267 	G$synch_frame$0$0 ==.
                           00020E  1268 	C$interrupts.c$238$1_0$121 ==.
                                   1269 ;	interrupts.c:238: void synch_frame (void) {return;}
                                   1270 ;	-----------------------------------------
                                   1271 ;	 function synch_frame
                                   1272 ;	-----------------------------------------
      00039B                       1273 _synch_frame:
                           00020E  1274 	C$interrupts.c$238$1_0$121 ==.
                           00020E  1275 	XG$synch_frame$0$0 ==.
      00039B 22               [24] 1276 	ret
                                   1277 ;------------------------------------------------------------
                                   1278 ;Allocation info for local variables in function 'SUDAV'
                                   1279 ;------------------------------------------------------------
                                   1280 ;i                         Allocated to registers r6 r7 
                                   1281 ;------------------------------------------------------------
                           00020F  1282 	G$SUDAV$0$0 ==.
                           00020F  1283 	C$interrupts.c$243$1_0$124 ==.
                                   1284 ;	interrupts.c:243: void SUDAV (void)
                                   1285 ;	-----------------------------------------
                                   1286 ;	 function SUDAV
                                   1287 ;	-----------------------------------------
      00039C                       1288 _SUDAV:
                           00020F  1289 	C$interrupts.c$246$1_0$124 ==.
                                   1290 ;	interrupts.c:246: EXIF &= 0xEF;// снимаем прерывание USB
      00039C 53 91 EF         [24] 1291 	anl	_EXIF,#0xef
                           000212  1292 	C$interrupts.c$247$1_0$124 ==.
                                   1293 ;	interrupts.c:247: USBIRQ = (1<<bSUDAV); // снимаем прерывание sudav
      00039F 90 E6 5D         [24] 1294 	mov	dptr,#_USBIRQ
      0003A2 74 01            [12] 1295 	mov	a,#0x01
      0003A4 F0               [24] 1296 	movx	@dptr,a
                           000218  1297 	C$interrupts.c$253$1_0$124 ==.
                                   1298 ;	interrupts.c:253: ptr_setupdat = (__xdata unsigned char *)setupdat;
      0003A5 75 25 B8         [24] 1299 	mov	_ptr_setupdat,#0xb8
      0003A8 75 26 E6         [24] 1300 	mov	(_ptr_setupdat + 1),#0xe6
                           00021E  1301 	C$interrupts.c$254$1_0$124 ==.
                                   1302 ;	interrupts.c:254: for (int i = 0; i < setupdat_size; i++)
      0003AB 7E 00            [12] 1303 	mov	r6,#0x00
      0003AD 7F 00            [12] 1304 	mov	r7,#0x00
      0003AF                       1305 00114$:
      0003AF C3               [12] 1306 	clr	c
      0003B0 EE               [12] 1307 	mov	a,r6
      0003B1 94 08            [12] 1308 	subb	a,#0x08
      0003B3 EF               [12] 1309 	mov	a,r7
      0003B4 64 80            [12] 1310 	xrl	a,#0x80
      0003B6 94 80            [12] 1311 	subb	a,#0x80
      0003B8 50 20            [24] 1312 	jnc	00101$
                           00022D  1313 	C$interrupts.c$256$3_0$126 ==.
                                   1314 ;	interrupts.c:256: ptr_dat[i] = ptr_setupdat[i];
      0003BA EE               [12] 1315 	mov	a,r6
      0003BB 25 21            [12] 1316 	add	a,_ptr_dat
      0003BD FC               [12] 1317 	mov	r4,a
      0003BE EF               [12] 1318 	mov	a,r7
      0003BF 35 22            [12] 1319 	addc	a,(_ptr_dat + 1)
      0003C1 FD               [12] 1320 	mov	r5,a
      0003C2 74 B8            [12] 1321 	mov	a,#0xb8
      0003C4 2E               [12] 1322 	add	a,r6
      0003C5 F5 82            [12] 1323 	mov	dpl,a
      0003C7 74 E6            [12] 1324 	mov	a,#0xe6
      0003C9 3F               [12] 1325 	addc	a,r7
      0003CA F5 83            [12] 1326 	mov	dph,a
      0003CC E0               [24] 1327 	movx	a,@dptr
      0003CD FB               [12] 1328 	mov	r3,a
      0003CE 8C 82            [24] 1329 	mov	dpl,r4
      0003D0 8D 83            [24] 1330 	mov	dph,r5
      0003D2 F0               [24] 1331 	movx	@dptr,a
                           000246  1332 	C$interrupts.c$254$2_0$125 ==.
                                   1333 ;	interrupts.c:254: for (int i = 0; i < setupdat_size; i++)
      0003D3 0E               [12] 1334 	inc	r6
      0003D4 BE 00 D8         [24] 1335 	cjne	r6,#0x00,00114$
      0003D7 0F               [12] 1336 	inc	r7
      0003D8 80 D5            [24] 1337 	sjmp	00114$
      0003DA                       1338 00101$:
                           00024D  1339 	C$interrupts.c$265$1_0$124 ==.
                                   1340 ;	interrupts.c:265: flagStallEP0 = 0;// очистили флаг ошибки EP0
                                   1341 ;	assignBit
      0003DA C2 00            [12] 1342 	clr	_flagStallEP0
                           00024F  1343 	C$interrupts.c$267$1_0$124 ==.
                                   1344 ;	interrupts.c:267: if (!(ptr_dat[bmR] & 0x60) && (ptr_dat[bR] < 0x0D))// проверяем что требование стандартное и попадает в диапазон стандартных требований (13)
      0003DC 85 21 82         [24] 1345 	mov	dpl,_ptr_dat
      0003DF 85 22 83         [24] 1346 	mov	dph,(_ptr_dat + 1)
      0003E2 E0               [24] 1347 	movx	a,@dptr
      0003E3 FF               [12] 1348 	mov	r7,a
      0003E4 54 60            [12] 1349 	anl	a,#0x60
      0003E6 60 03            [24] 1350 	jz	00150$
      0003E8 02 04 66         [24] 1351 	ljmp	00110$
      0003EB                       1352 00150$:
      0003EB 85 21 82         [24] 1353 	mov	dpl,_ptr_dat
      0003EE 85 22 83         [24] 1354 	mov	dph,(_ptr_dat + 1)
      0003F1 A3               [24] 1355 	inc	dptr
      0003F2 E0               [24] 1356 	movx	a,@dptr
      0003F3 FF               [12] 1357 	mov	r7,a
      0003F4 BF 0D 00         [24] 1358 	cjne	r7,#0x0d,00151$
      0003F7                       1359 00151$:
      0003F7 50 6D            [24] 1360 	jnc	00110$
                           00026C  1361 	C$interrupts.c$270$2_0$127 ==.
                                   1362 ;	interrupts.c:270: std_func[ptr_dat[bR]]();// функция обработки требования
      0003F9 EF               [12] 1363 	mov	a,r7
      0003FA 2F               [12] 1364 	add	a,r7
      0003FB 24 27            [12] 1365 	add	a,#_std_func
      0003FD F9               [12] 1366 	mov	r1,a
      0003FE 87 06            [24] 1367 	mov	ar6,@r1
      000400 09               [12] 1368 	inc	r1
      000401 87 07            [24] 1369 	mov	ar7,@r1
      000403 C0 07            [24] 1370 	push	ar7
      000405 C0 06            [24] 1371 	push	ar6
      000407 8E 82            [24] 1372 	mov	dpl,r6
      000409 8F 83            [24] 1373 	mov	dph,r7
      00040B 12 00 69         [24] 1374 	lcall	__sdcc_call_dptr
      00040E D0 06            [24] 1375 	pop	ar6
      000410 D0 07            [24] 1376 	pop	ar7
                           000285  1377 	C$interrupts.c$272$2_0$127 ==.
                                   1378 ;	interrupts.c:272: if (flagStallEP0)
      000412 30 00 07         [24] 1379 	jnb	_flagStallEP0,00103$
                           000288  1380 	C$interrupts.c$274$3_0$128 ==.
                                   1381 ;	interrupts.c:274: EP0CS = (unsigned char) ((1<<HSNAK) | (1<<STALL));// устанавливаем stall, снимаем snak
      000415 90 E6 A0         [24] 1382 	mov	dptr,#_EP0CS
      000418 74 81            [12] 1383 	mov	a,#0x81
      00041A F0               [24] 1384 	movx	@dptr,a
                           00028E  1385 	C$interrupts.c$275$3_0$128 ==.
                                   1386 ;	interrupts.c:275: __asm__("reti");
      00041B 32               [24] 1387 	reti
      00041C                       1388 00103$:
                           00028F  1389 	C$interrupts.c$278$2_0$127 ==.
                                   1390 ;	interrupts.c:278: EP0CS |= (1<<HSNAK);
      00041C 90 E6 A0         [24] 1391 	mov	dptr,#_EP0CS
      00041F E0               [24] 1392 	movx	a,@dptr
      000420 43 E0 80         [24] 1393 	orl	acc,#0x80
      000423 F0               [24] 1394 	movx	@dptr,a
                           000297  1395 	C$interrupts.c$281$2_0$127 ==.
                                   1396 ;	interrupts.c:281: if (!(ptr_dat[bmR] & 0x80))// если направление OUT
      000424 85 21 82         [24] 1397 	mov	dpl,_ptr_dat
      000427 85 22 83         [24] 1398 	mov	dph,(_ptr_dat + 1)
      00042A E0               [24] 1399 	movx	a,@dptr
      00042B FF               [12] 1400 	mov	r7,a
      00042C 20 E7 01         [24] 1401 	jb	acc.7,00105$
                           0002A2  1402 	C$interrupts.c$283$3_0$129 ==.
                                   1403 ;	interrupts.c:283: __asm__("reti");
      00042F 32               [24] 1404 	reti
      000430                       1405 00105$:
                           0002A3  1406 	C$interrupts.c$286$2_0$127 ==.
                                   1407 ;	interrupts.c:286: if (flagGetDesc)// если надо передать дескриптор с помощью системы автоматической передачи дескрипторов (адреса мы прописали в подпрограмме)
                           0002A3  1408 	C$interrupts.c$288$3_0$130 ==.
                                   1409 ;	interrupts.c:288: flagGetDesc = 0;
                                   1410 ;	assignBit
      000430 10 01 02         [24] 1411 	jbc	_flagGetDesc,00155$
      000433 80 03            [24] 1412 	sjmp	00107$
      000435                       1413 00155$:
                           0002A8  1414 	C$interrupts.c$289$3_0$130 ==.
                                   1415 ;	interrupts.c:289: __asm__("reti");
      000435 32               [24] 1416 	reti
      000436 80 37            [24] 1417 	sjmp	00111$
      000438                       1418 00107$:
                           0002AB  1419 	C$interrupts.c$293$3_0$131 ==.
                                   1420 ;	interrupts.c:293: sync_delay();
      000438 12 01 1B         [24] 1421 	lcall	_sync_delay
                           0002AE  1422 	C$interrupts.c$294$3_0$131 ==.
                                   1423 ;	interrupts.c:294: EP0BCH = ptr_dat[wLH];
      00043B 85 21 82         [24] 1424 	mov	dpl,_ptr_dat
      00043E 85 22 83         [24] 1425 	mov	dph,(_ptr_dat + 1)
      000441 A3               [24] 1426 	inc	dptr
      000442 A3               [24] 1427 	inc	dptr
      000443 A3               [24] 1428 	inc	dptr
      000444 A3               [24] 1429 	inc	dptr
      000445 A3               [24] 1430 	inc	dptr
      000446 A3               [24] 1431 	inc	dptr
      000447 A3               [24] 1432 	inc	dptr
      000448 E0               [24] 1433 	movx	a,@dptr
      000449 90 E6 8A         [24] 1434 	mov	dptr,#_EP0BCH
      00044C F0               [24] 1435 	movx	@dptr,a
                           0002C0  1436 	C$interrupts.c$295$3_0$131 ==.
                                   1437 ;	interrupts.c:295: sync_delay();
      00044D 12 01 1B         [24] 1438 	lcall	_sync_delay
                           0002C3  1439 	C$interrupts.c$296$3_0$131 ==.
                                   1440 ;	interrupts.c:296: EP0BCL = ptr_dat[wLL];
      000450 85 21 82         [24] 1441 	mov	dpl,_ptr_dat
      000453 85 22 83         [24] 1442 	mov	dph,(_ptr_dat + 1)
      000456 A3               [24] 1443 	inc	dptr
      000457 A3               [24] 1444 	inc	dptr
      000458 A3               [24] 1445 	inc	dptr
      000459 A3               [24] 1446 	inc	dptr
      00045A A3               [24] 1447 	inc	dptr
      00045B A3               [24] 1448 	inc	dptr
      00045C E0               [24] 1449 	movx	a,@dptr
      00045D 90 E6 8B         [24] 1450 	mov	dptr,#_EP0BCL
      000460 F0               [24] 1451 	movx	@dptr,a
                           0002D4  1452 	C$interrupts.c$297$3_0$131 ==.
                                   1453 ;	interrupts.c:297: sync_delay();
      000461 12 01 1B         [24] 1454 	lcall	_sync_delay
      000464 80 09            [24] 1455 	sjmp	00111$
      000466                       1456 00110$:
                           0002D9  1457 	C$interrupts.c$304$2_0$132 ==.
                                   1458 ;	interrupts.c:304: flagStallEP0 = 1;
                                   1459 ;	assignBit
      000466 D2 00            [12] 1460 	setb	_flagStallEP0
                           0002DB  1461 	C$interrupts.c$305$2_0$132 ==.
                                   1462 ;	interrupts.c:305: EP0CS = (unsigned char) ((1<<HSNAK) | (1<<STALL));// устанавливаем stall, снимаем snak
      000468 90 E6 A0         [24] 1463 	mov	dptr,#_EP0CS
      00046B 74 81            [12] 1464 	mov	a,#0x81
      00046D F0               [24] 1465 	movx	@dptr,a
                           0002E1  1466 	C$interrupts.c$306$2_0$132 ==.
                                   1467 ;	interrupts.c:306: __asm__("reti");
      00046E 32               [24] 1468 	reti
      00046F                       1469 00111$:
                           0002E2  1470 	C$interrupts.c$308$1_0$124 ==.
                                   1471 ;	interrupts.c:308: __asm__("reti");
      00046F 32               [24] 1472 	reti
                           0002E3  1473 	C$interrupts.c$309$1_0$124 ==.
                                   1474 ;	interrupts.c:309: }
                           0002E3  1475 	C$interrupts.c$309$1_0$124 ==.
                           0002E3  1476 	XG$SUDAV$0$0 ==.
      000470 22               [24] 1477 	ret
                                   1478 ;------------------------------------------------------------
                                   1479 ;Allocation info for local variables in function 'SOF'
                                   1480 ;------------------------------------------------------------
                           0002E4  1481 	G$SOF$0$0 ==.
                           0002E4  1482 	C$interrupts.c$310$1_0$135 ==.
                                   1483 ;	interrupts.c:310: void SOF (void) {}
                                   1484 ;	-----------------------------------------
                                   1485 ;	 function SOF
                                   1486 ;	-----------------------------------------
      000471                       1487 _SOF:
                           0002E4  1488 	C$interrupts.c$310$1_0$135 ==.
                           0002E4  1489 	XG$SOF$0$0 ==.
      000471 22               [24] 1490 	ret
                                   1491 ;------------------------------------------------------------
                                   1492 ;Allocation info for local variables in function 'SUTOC'
                                   1493 ;------------------------------------------------------------
                           0002E5  1494 	G$SUTOC$0$0 ==.
                           0002E5  1495 	C$interrupts.c$311$1_0$138 ==.
                                   1496 ;	interrupts.c:311: void SUTOC (void) {}
                                   1497 ;	-----------------------------------------
                                   1498 ;	 function SUTOC
                                   1499 ;	-----------------------------------------
      000472                       1500 _SUTOC:
                           0002E5  1501 	C$interrupts.c$311$1_0$138 ==.
                           0002E5  1502 	XG$SUTOC$0$0 ==.
      000472 22               [24] 1503 	ret
                                   1504 ;------------------------------------------------------------
                                   1505 ;Allocation info for local variables in function 'SUSPEND'
                                   1506 ;------------------------------------------------------------
                           0002E6  1507 	G$SUSPEND$0$0 ==.
                           0002E6  1508 	C$interrupts.c$312$1_0$141 ==.
                                   1509 ;	interrupts.c:312: void SUSPEND (void) {}
                                   1510 ;	-----------------------------------------
                                   1511 ;	 function SUSPEND
                                   1512 ;	-----------------------------------------
      000473                       1513 _SUSPEND:
                           0002E6  1514 	C$interrupts.c$312$1_0$141 ==.
                           0002E6  1515 	XG$SUSPEND$0$0 ==.
      000473 22               [24] 1516 	ret
                                   1517 ;------------------------------------------------------------
                                   1518 ;Allocation info for local variables in function 'USB_RESET'
                                   1519 ;------------------------------------------------------------
                           0002E7  1520 	G$USB_RESET$0$0 ==.
                           0002E7  1521 	C$interrupts.c$313$1_0$144 ==.
                                   1522 ;	interrupts.c:313: void USB_RESET (void) {}
                                   1523 ;	-----------------------------------------
                                   1524 ;	 function USB_RESET
                                   1525 ;	-----------------------------------------
      000474                       1526 _USB_RESET:
                           0002E7  1527 	C$interrupts.c$313$1_0$144 ==.
                           0002E7  1528 	XG$USB_RESET$0$0 ==.
      000474 22               [24] 1529 	ret
                                   1530 ;------------------------------------------------------------
                                   1531 ;Allocation info for local variables in function 'HISPEED'
                                   1532 ;------------------------------------------------------------
                           0002E8  1533 	G$HISPEED$0$0 ==.
                           0002E8  1534 	C$interrupts.c$314$1_0$147 ==.
                                   1535 ;	interrupts.c:314: void HISPEED (void) {}
                                   1536 ;	-----------------------------------------
                                   1537 ;	 function HISPEED
                                   1538 ;	-----------------------------------------
      000475                       1539 _HISPEED:
                           0002E8  1540 	C$interrupts.c$314$1_0$147 ==.
                           0002E8  1541 	XG$HISPEED$0$0 ==.
      000475 22               [24] 1542 	ret
                                   1543 ;------------------------------------------------------------
                                   1544 ;Allocation info for local variables in function 'EP0ACK'
                                   1545 ;------------------------------------------------------------
                           0002E9  1546 	G$EP0ACK$0$0 ==.
                           0002E9  1547 	C$interrupts.c$315$1_0$150 ==.
                                   1548 ;	interrupts.c:315: void EP0ACK (void) {}
                                   1549 ;	-----------------------------------------
                                   1550 ;	 function EP0ACK
                                   1551 ;	-----------------------------------------
      000476                       1552 _EP0ACK:
                           0002E9  1553 	C$interrupts.c$315$1_0$150 ==.
                           0002E9  1554 	XG$EP0ACK$0$0 ==.
      000476 22               [24] 1555 	ret
                                   1556 ;------------------------------------------------------------
                                   1557 ;Allocation info for local variables in function '_reserved_'
                                   1558 ;------------------------------------------------------------
                           0002EA  1559 	G$_reserved_$0$0 ==.
                           0002EA  1560 	C$interrupts.c$316$1_0$153 ==.
                                   1561 ;	interrupts.c:316: void _reserved_ (void) {}
                                   1562 ;	-----------------------------------------
                                   1563 ;	 function _reserved_
                                   1564 ;	-----------------------------------------
      000477                       1565 __reserved_:
                           0002EA  1566 	C$interrupts.c$316$1_0$153 ==.
                           0002EA  1567 	XG$_reserved_$0$0 ==.
      000477 22               [24] 1568 	ret
                                   1569 ;------------------------------------------------------------
                                   1570 ;Allocation info for local variables in function 'EP0IN'
                                   1571 ;------------------------------------------------------------
                           0002EB  1572 	G$EP0IN$0$0 ==.
                           0002EB  1573 	C$interrupts.c$317$1_0$156 ==.
                                   1574 ;	interrupts.c:317: void EP0IN (void) {}
                                   1575 ;	-----------------------------------------
                                   1576 ;	 function EP0IN
                                   1577 ;	-----------------------------------------
      000478                       1578 _EP0IN:
                           0002EB  1579 	C$interrupts.c$317$1_0$156 ==.
                           0002EB  1580 	XG$EP0IN$0$0 ==.
      000478 22               [24] 1581 	ret
                                   1582 ;------------------------------------------------------------
                                   1583 ;Allocation info for local variables in function 'EP0OUT'
                                   1584 ;------------------------------------------------------------
                           0002EC  1585 	G$EP0OUT$0$0 ==.
                           0002EC  1586 	C$interrupts.c$318$1_0$159 ==.
                                   1587 ;	interrupts.c:318: void EP0OUT (void) {}
                                   1588 ;	-----------------------------------------
                                   1589 ;	 function EP0OUT
                                   1590 ;	-----------------------------------------
      000479                       1591 _EP0OUT:
                           0002EC  1592 	C$interrupts.c$318$1_0$159 ==.
                           0002EC  1593 	XG$EP0OUT$0$0 ==.
      000479 22               [24] 1594 	ret
                                   1595 ;------------------------------------------------------------
                                   1596 ;Allocation info for local variables in function 'EP1IN'
                                   1597 ;------------------------------------------------------------
                           0002ED  1598 	G$EP1IN$0$0 ==.
                           0002ED  1599 	C$interrupts.c$319$1_0$162 ==.
                                   1600 ;	interrupts.c:319: void EP1IN (void) {}
                                   1601 ;	-----------------------------------------
                                   1602 ;	 function EP1IN
                                   1603 ;	-----------------------------------------
      00047A                       1604 _EP1IN:
                           0002ED  1605 	C$interrupts.c$319$1_0$162 ==.
                           0002ED  1606 	XG$EP1IN$0$0 ==.
      00047A 22               [24] 1607 	ret
                                   1608 ;------------------------------------------------------------
                                   1609 ;Allocation info for local variables in function 'EP1OUT'
                                   1610 ;------------------------------------------------------------
                           0002EE  1611 	G$EP1OUT$0$0 ==.
                           0002EE  1612 	C$interrupts.c$320$1_0$165 ==.
                                   1613 ;	interrupts.c:320: void EP1OUT (void) {}
                                   1614 ;	-----------------------------------------
                                   1615 ;	 function EP1OUT
                                   1616 ;	-----------------------------------------
      00047B                       1617 _EP1OUT:
                           0002EE  1618 	C$interrupts.c$320$1_0$165 ==.
                           0002EE  1619 	XG$EP1OUT$0$0 ==.
      00047B 22               [24] 1620 	ret
                                   1621 ;------------------------------------------------------------
                                   1622 ;Allocation info for local variables in function 'EP2'
                                   1623 ;------------------------------------------------------------
                           0002EF  1624 	G$EP2$0$0 ==.
                           0002EF  1625 	C$interrupts.c$321$1_0$168 ==.
                                   1626 ;	interrupts.c:321: void EP2 (void) {}
                                   1627 ;	-----------------------------------------
                                   1628 ;	 function EP2
                                   1629 ;	-----------------------------------------
      00047C                       1630 _EP2:
                           0002EF  1631 	C$interrupts.c$321$1_0$168 ==.
                           0002EF  1632 	XG$EP2$0$0 ==.
      00047C 22               [24] 1633 	ret
                                   1634 ;------------------------------------------------------------
                                   1635 ;Allocation info for local variables in function 'EP4'
                                   1636 ;------------------------------------------------------------
                           0002F0  1637 	G$EP4$0$0 ==.
                           0002F0  1638 	C$interrupts.c$322$1_0$171 ==.
                                   1639 ;	interrupts.c:322: void EP4 (void) {}
                                   1640 ;	-----------------------------------------
                                   1641 ;	 function EP4
                                   1642 ;	-----------------------------------------
      00047D                       1643 _EP4:
                           0002F0  1644 	C$interrupts.c$322$1_0$171 ==.
                           0002F0  1645 	XG$EP4$0$0 ==.
      00047D 22               [24] 1646 	ret
                                   1647 ;------------------------------------------------------------
                                   1648 ;Allocation info for local variables in function 'EP6'
                                   1649 ;------------------------------------------------------------
                           0002F1  1650 	G$EP6$0$0 ==.
                           0002F1  1651 	C$interrupts.c$323$1_0$174 ==.
                                   1652 ;	interrupts.c:323: void EP6 (void) {}
                                   1653 ;	-----------------------------------------
                                   1654 ;	 function EP6
                                   1655 ;	-----------------------------------------
      00047E                       1656 _EP6:
                           0002F1  1657 	C$interrupts.c$323$1_0$174 ==.
                           0002F1  1658 	XG$EP6$0$0 ==.
      00047E 22               [24] 1659 	ret
                                   1660 ;------------------------------------------------------------
                                   1661 ;Allocation info for local variables in function 'EP8'
                                   1662 ;------------------------------------------------------------
                           0002F2  1663 	G$EP8$0$0 ==.
                           0002F2  1664 	C$interrupts.c$324$1_0$177 ==.
                                   1665 ;	interrupts.c:324: void EP8 (void) {}
                                   1666 ;	-----------------------------------------
                                   1667 ;	 function EP8
                                   1668 ;	-----------------------------------------
      00047F                       1669 _EP8:
                           0002F2  1670 	C$interrupts.c$324$1_0$177 ==.
                           0002F2  1671 	XG$EP8$0$0 ==.
      00047F 22               [24] 1672 	ret
                                   1673 ;------------------------------------------------------------
                                   1674 ;Allocation info for local variables in function 'IBN'
                                   1675 ;------------------------------------------------------------
                           0002F3  1676 	G$IBN$0$0 ==.
                           0002F3  1677 	C$interrupts.c$325$1_0$180 ==.
                                   1678 ;	interrupts.c:325: void IBN (void) {}
                                   1679 ;	-----------------------------------------
                                   1680 ;	 function IBN
                                   1681 ;	-----------------------------------------
      000480                       1682 _IBN:
                           0002F3  1683 	C$interrupts.c$325$1_0$180 ==.
                           0002F3  1684 	XG$IBN$0$0 ==.
      000480 22               [24] 1685 	ret
                                   1686 ;------------------------------------------------------------
                                   1687 ;Allocation info for local variables in function '_reserved2_'
                                   1688 ;------------------------------------------------------------
                           0002F4  1689 	G$_reserved2_$0$0 ==.
                           0002F4  1690 	C$interrupts.c$326$1_0$183 ==.
                                   1691 ;	interrupts.c:326: void _reserved2_ (void) {}
                                   1692 ;	-----------------------------------------
                                   1693 ;	 function _reserved2_
                                   1694 ;	-----------------------------------------
      000481                       1695 __reserved2_:
                           0002F4  1696 	C$interrupts.c$326$1_0$183 ==.
                           0002F4  1697 	XG$_reserved2_$0$0 ==.
      000481 22               [24] 1698 	ret
                                   1699 ;------------------------------------------------------------
                                   1700 ;Allocation info for local variables in function 'EP0PING'
                                   1701 ;------------------------------------------------------------
                           0002F5  1702 	G$EP0PING$0$0 ==.
                           0002F5  1703 	C$interrupts.c$327$1_0$186 ==.
                                   1704 ;	interrupts.c:327: void EP0PING (void) {}
                                   1705 ;	-----------------------------------------
                                   1706 ;	 function EP0PING
                                   1707 ;	-----------------------------------------
      000482                       1708 _EP0PING:
                           0002F5  1709 	C$interrupts.c$327$1_0$186 ==.
                           0002F5  1710 	XG$EP0PING$0$0 ==.
      000482 22               [24] 1711 	ret
                                   1712 ;------------------------------------------------------------
                                   1713 ;Allocation info for local variables in function 'EP1PING'
                                   1714 ;------------------------------------------------------------
                           0002F6  1715 	G$EP1PING$0$0 ==.
                           0002F6  1716 	C$interrupts.c$328$1_0$189 ==.
                                   1717 ;	interrupts.c:328: void EP1PING (void) {}
                                   1718 ;	-----------------------------------------
                                   1719 ;	 function EP1PING
                                   1720 ;	-----------------------------------------
      000483                       1721 _EP1PING:
                           0002F6  1722 	C$interrupts.c$328$1_0$189 ==.
                           0002F6  1723 	XG$EP1PING$0$0 ==.
      000483 22               [24] 1724 	ret
                                   1725 ;------------------------------------------------------------
                                   1726 ;Allocation info for local variables in function 'EP2PING'
                                   1727 ;------------------------------------------------------------
                           0002F7  1728 	G$EP2PING$0$0 ==.
                           0002F7  1729 	C$interrupts.c$329$1_0$192 ==.
                                   1730 ;	interrupts.c:329: void EP2PING (void) {}
                                   1731 ;	-----------------------------------------
                                   1732 ;	 function EP2PING
                                   1733 ;	-----------------------------------------
      000484                       1734 _EP2PING:
                           0002F7  1735 	C$interrupts.c$329$1_0$192 ==.
                           0002F7  1736 	XG$EP2PING$0$0 ==.
      000484 22               [24] 1737 	ret
                                   1738 ;------------------------------------------------------------
                                   1739 ;Allocation info for local variables in function 'EP4PING'
                                   1740 ;------------------------------------------------------------
                           0002F8  1741 	G$EP4PING$0$0 ==.
                           0002F8  1742 	C$interrupts.c$330$1_0$195 ==.
                                   1743 ;	interrupts.c:330: void EP4PING (void) {}
                                   1744 ;	-----------------------------------------
                                   1745 ;	 function EP4PING
                                   1746 ;	-----------------------------------------
      000485                       1747 _EP4PING:
                           0002F8  1748 	C$interrupts.c$330$1_0$195 ==.
                           0002F8  1749 	XG$EP4PING$0$0 ==.
      000485 22               [24] 1750 	ret
                                   1751 ;------------------------------------------------------------
                                   1752 ;Allocation info for local variables in function 'EP6PING'
                                   1753 ;------------------------------------------------------------
                           0002F9  1754 	G$EP6PING$0$0 ==.
                           0002F9  1755 	C$interrupts.c$331$1_0$198 ==.
                                   1756 ;	interrupts.c:331: void EP6PING (void) {}
                                   1757 ;	-----------------------------------------
                                   1758 ;	 function EP6PING
                                   1759 ;	-----------------------------------------
      000486                       1760 _EP6PING:
                           0002F9  1761 	C$interrupts.c$331$1_0$198 ==.
                           0002F9  1762 	XG$EP6PING$0$0 ==.
      000486 22               [24] 1763 	ret
                                   1764 ;------------------------------------------------------------
                                   1765 ;Allocation info for local variables in function 'EP8PING'
                                   1766 ;------------------------------------------------------------
                           0002FA  1767 	G$EP8PING$0$0 ==.
                           0002FA  1768 	C$interrupts.c$332$1_0$201 ==.
                                   1769 ;	interrupts.c:332: void EP8PING (void) {}
                                   1770 ;	-----------------------------------------
                                   1771 ;	 function EP8PING
                                   1772 ;	-----------------------------------------
      000487                       1773 _EP8PING:
                           0002FA  1774 	C$interrupts.c$332$1_0$201 ==.
                           0002FA  1775 	XG$EP8PING$0$0 ==.
      000487 22               [24] 1776 	ret
                                   1777 ;------------------------------------------------------------
                                   1778 ;Allocation info for local variables in function 'ERRLIMIT'
                                   1779 ;------------------------------------------------------------
                           0002FB  1780 	G$ERRLIMIT$0$0 ==.
                           0002FB  1781 	C$interrupts.c$333$1_0$204 ==.
                                   1782 ;	interrupts.c:333: void ERRLIMIT (void) {}
                                   1783 ;	-----------------------------------------
                                   1784 ;	 function ERRLIMIT
                                   1785 ;	-----------------------------------------
      000488                       1786 _ERRLIMIT:
                           0002FB  1787 	C$interrupts.c$333$1_0$204 ==.
                           0002FB  1788 	XG$ERRLIMIT$0$0 ==.
      000488 22               [24] 1789 	ret
                                   1790 ;------------------------------------------------------------
                                   1791 ;Allocation info for local variables in function '_reserved3_'
                                   1792 ;------------------------------------------------------------
                           0002FC  1793 	G$_reserved3_$0$0 ==.
                           0002FC  1794 	C$interrupts.c$334$1_0$207 ==.
                                   1795 ;	interrupts.c:334: void _reserved3_ (void) {}
                                   1796 ;	-----------------------------------------
                                   1797 ;	 function _reserved3_
                                   1798 ;	-----------------------------------------
      000489                       1799 __reserved3_:
                           0002FC  1800 	C$interrupts.c$334$1_0$207 ==.
                           0002FC  1801 	XG$_reserved3_$0$0 ==.
      000489 22               [24] 1802 	ret
                                   1803 ;------------------------------------------------------------
                                   1804 ;Allocation info for local variables in function '_reserved4_'
                                   1805 ;------------------------------------------------------------
                           0002FD  1806 	G$_reserved4_$0$0 ==.
                           0002FD  1807 	C$interrupts.c$335$1_0$210 ==.
                                   1808 ;	interrupts.c:335: void _reserved4_ (void) {}
                                   1809 ;	-----------------------------------------
                                   1810 ;	 function _reserved4_
                                   1811 ;	-----------------------------------------
      00048A                       1812 __reserved4_:
                           0002FD  1813 	C$interrupts.c$335$1_0$210 ==.
                           0002FD  1814 	XG$_reserved4_$0$0 ==.
      00048A 22               [24] 1815 	ret
                                   1816 ;------------------------------------------------------------
                                   1817 ;Allocation info for local variables in function '_reserved5_'
                                   1818 ;------------------------------------------------------------
                           0002FE  1819 	G$_reserved5_$0$0 ==.
                           0002FE  1820 	C$interrupts.c$336$1_0$213 ==.
                                   1821 ;	interrupts.c:336: void _reserved5_ (void) {}
                                   1822 ;	-----------------------------------------
                                   1823 ;	 function _reserved5_
                                   1824 ;	-----------------------------------------
      00048B                       1825 __reserved5_:
                           0002FE  1826 	C$interrupts.c$336$1_0$213 ==.
                           0002FE  1827 	XG$_reserved5_$0$0 ==.
      00048B 22               [24] 1828 	ret
                                   1829 ;------------------------------------------------------------
                                   1830 ;Allocation info for local variables in function 'EP2ISOERR'
                                   1831 ;------------------------------------------------------------
                           0002FF  1832 	G$EP2ISOERR$0$0 ==.
                           0002FF  1833 	C$interrupts.c$337$1_0$216 ==.
                                   1834 ;	interrupts.c:337: void EP2ISOERR (void) {}
                                   1835 ;	-----------------------------------------
                                   1836 ;	 function EP2ISOERR
                                   1837 ;	-----------------------------------------
      00048C                       1838 _EP2ISOERR:
                           0002FF  1839 	C$interrupts.c$337$1_0$216 ==.
                           0002FF  1840 	XG$EP2ISOERR$0$0 ==.
      00048C 22               [24] 1841 	ret
                                   1842 ;------------------------------------------------------------
                                   1843 ;Allocation info for local variables in function 'EP4ISOERR'
                                   1844 ;------------------------------------------------------------
                           000300  1845 	G$EP4ISOERR$0$0 ==.
                           000300  1846 	C$interrupts.c$338$1_0$219 ==.
                                   1847 ;	interrupts.c:338: void EP4ISOERR (void) {}
                                   1848 ;	-----------------------------------------
                                   1849 ;	 function EP4ISOERR
                                   1850 ;	-----------------------------------------
      00048D                       1851 _EP4ISOERR:
                           000300  1852 	C$interrupts.c$338$1_0$219 ==.
                           000300  1853 	XG$EP4ISOERR$0$0 ==.
      00048D 22               [24] 1854 	ret
                                   1855 ;------------------------------------------------------------
                                   1856 ;Allocation info for local variables in function 'EP6ISOERR'
                                   1857 ;------------------------------------------------------------
                           000301  1858 	G$EP6ISOERR$0$0 ==.
                           000301  1859 	C$interrupts.c$339$1_0$222 ==.
                                   1860 ;	interrupts.c:339: void EP6ISOERR (void) {}
                                   1861 ;	-----------------------------------------
                                   1862 ;	 function EP6ISOERR
                                   1863 ;	-----------------------------------------
      00048E                       1864 _EP6ISOERR:
                           000301  1865 	C$interrupts.c$339$1_0$222 ==.
                           000301  1866 	XG$EP6ISOERR$0$0 ==.
      00048E 22               [24] 1867 	ret
                                   1868 ;------------------------------------------------------------
                                   1869 ;Allocation info for local variables in function 'EP8ISOERR'
                                   1870 ;------------------------------------------------------------
                           000302  1871 	G$EP8ISOERR$0$0 ==.
                           000302  1872 	C$interrupts.c$340$1_0$225 ==.
                                   1873 ;	interrupts.c:340: void EP8ISOERR (void) {}
                                   1874 ;	-----------------------------------------
                                   1875 ;	 function EP8ISOERR
                                   1876 ;	-----------------------------------------
      00048F                       1877 _EP8ISOERR:
                           000302  1878 	C$interrupts.c$340$1_0$225 ==.
                           000302  1879 	XG$EP8ISOERR$0$0 ==.
      00048F 22               [24] 1880 	ret
                                   1881 ;------------------------------------------------------------
                                   1882 ;Allocation info for local variables in function 'send_byte_uart_9600'
                                   1883 ;------------------------------------------------------------
                                   1884 ;byte                      Allocated to registers r7 
                                   1885 ;i                         Allocated to registers r6 
                                   1886 ;------------------------------------------------------------
                           000303  1887 	G$send_byte_uart_9600$0$0 ==.
                           000303  1888 	C$interrupts.c$342$1_0$227 ==.
                                   1889 ;	interrupts.c:342: void send_byte_uart_9600 (unsigned char byte)
                                   1890 ;	-----------------------------------------
                                   1891 ;	 function send_byte_uart_9600
                                   1892 ;	-----------------------------------------
      000490                       1893 _send_byte_uart_9600:
      000490 AF 82            [24] 1894 	mov	r7,dpl
                           000305  1895 	C$interrupts.c$344$1_0$227 ==.
                                   1896 ;	interrupts.c:344: TMOD = (0<<TMOD0 | 1<<TMOD1);// 8bit counter0 with auto-reload T0
      000492 75 89 02         [24] 1897 	mov	_TMOD,#0x02
                           000308  1898 	C$interrupts.c$345$1_0$227 ==.
                                   1899 ;	interrupts.c:345: CKCON = (0<<CKCON3);// CLK/12
      000495 75 8E 00         [24] 1900 	mov	_CKCON,#0x00
                           00030B  1901 	C$interrupts.c$346$1_0$227 ==.
                                   1902 ;	interrupts.c:346: TH0 = 0x30;// 48 T0
      000498 75 8C 30         [24] 1903 	mov	_TH0,#0x30
                           00030E  1904 	C$interrupts.c$347$1_0$227 ==.
                                   1905 ;	interrupts.c:347: TL0 = 0x00;
      00049B 75 8A 00         [24] 1906 	mov	_TL0,#0x00
                           000311  1907 	C$interrupts.c$348$1_0$227 ==.
                                   1908 ;	interrupts.c:348: PA0 = 0;
                                   1909 ;	assignBit
      00049E C2 80            [12] 1910 	clr	_PA0
                           000313  1911 	C$interrupts.c$350$1_0$227 ==.
                                   1912 ;	interrupts.c:350: TR0 = 1;// run timer0
                                   1913 ;	assignBit
      0004A0 D2 8C            [12] 1914 	setb	_TR0
                           000315  1915 	C$interrupts.c$351$1_0$227 ==.
                                   1916 ;	interrupts.c:351: while (!TF0);
      0004A2                       1917 00101$:
                           000315  1918 	C$interrupts.c$352$1_0$227 ==.
                                   1919 ;	interrupts.c:352: TF0 = 0;
                                   1920 ;	assignBit
      0004A2 10 8D 02         [24] 1921 	jbc	_TF0,00160$
      0004A5 80 FB            [24] 1922 	sjmp	00101$
      0004A7                       1923 00160$:
                           00031A  1924 	C$interrupts.c$353$1_0$227 ==.
                                   1925 ;	interrupts.c:353: for (unsigned char i = 0; i < 8; i++)
      0004A7 7E 00            [12] 1926 	mov	r6,#0x00
      0004A9                       1927 00115$:
      0004A9 BE 08 00         [24] 1928 	cjne	r6,#0x08,00161$
      0004AC                       1929 00161$:
      0004AC 50 1B            [24] 1930 	jnc	00107$
                           000321  1931 	C$interrupts.c$355$3_0$229 ==.
                                   1932 ;	interrupts.c:355: PA0 = ((byte >> i) & 0x01);
      0004AE 8E F0            [24] 1933 	mov	b,r6
      0004B0 05 F0            [12] 1934 	inc	b
      0004B2 EF               [12] 1935 	mov	a,r7
      0004B3 80 02            [24] 1936 	sjmp	00164$
      0004B5                       1937 00163$:
      0004B5 C3               [12] 1938 	clr	c
      0004B6 13               [12] 1939 	rrc	a
      0004B7                       1940 00164$:
      0004B7 D5 F0 FB         [24] 1941 	djnz	b,00163$
      0004BA 54 01            [12] 1942 	anl	a,#0x01
                                   1943 ;	assignBit
      0004BC FD               [12] 1944 	mov	r5,a
      0004BD 24 FF            [12] 1945 	add	a,#0xff
      0004BF 92 80            [24] 1946 	mov	_PA0,c
                           000334  1947 	C$interrupts.c$356$3_0$229 ==.
                                   1948 ;	interrupts.c:356: while (!TF0);
      0004C1                       1949 00104$:
                           000334  1950 	C$interrupts.c$357$3_0$229 ==.
                                   1951 ;	interrupts.c:357: TF0 = 0;
                                   1952 ;	assignBit
      0004C1 10 8D 02         [24] 1953 	jbc	_TF0,00165$
      0004C4 80 FB            [24] 1954 	sjmp	00104$
      0004C6                       1955 00165$:
                           000339  1956 	C$interrupts.c$353$2_0$228 ==.
                                   1957 ;	interrupts.c:353: for (unsigned char i = 0; i < 8; i++)
      0004C6 0E               [12] 1958 	inc	r6
      0004C7 80 E0            [24] 1959 	sjmp	00115$
      0004C9                       1960 00107$:
                           00033C  1961 	C$interrupts.c$359$1_0$227 ==.
                                   1962 ;	interrupts.c:359: PA0 = 1;
                                   1963 ;	assignBit
      0004C9 D2 80            [12] 1964 	setb	_PA0
                           00033E  1965 	C$interrupts.c$360$1_0$227 ==.
                                   1966 ;	interrupts.c:360: while (!TF0);
      0004CB                       1967 00108$:
                           00033E  1968 	C$interrupts.c$361$1_0$227 ==.
                                   1969 ;	interrupts.c:361: TF0 = 0;
                                   1970 ;	assignBit
      0004CB 10 8D 02         [24] 1971 	jbc	_TF0,00166$
      0004CE 80 FB            [24] 1972 	sjmp	00108$
      0004D0                       1973 00166$:
                           000343  1974 	C$interrupts.c$362$1_0$227 ==.
                                   1975 ;	interrupts.c:362: while (!TF0);
      0004D0                       1976 00111$:
                           000343  1977 	C$interrupts.c$363$1_0$227 ==.
                                   1978 ;	interrupts.c:363: TF0 = 0;
                                   1979 ;	assignBit
      0004D0 10 8D 02         [24] 1980 	jbc	_TF0,00167$
      0004D3 80 FB            [24] 1981 	sjmp	00111$
      0004D5                       1982 00167$:
                           000348  1983 	C$interrupts.c$364$1_0$227 ==.
                                   1984 ;	interrupts.c:364: TR0 = 0;
                                   1985 ;	assignBit
      0004D5 C2 8C            [12] 1986 	clr	_TR0
                           00034A  1987 	C$interrupts.c$365$1_0$227 ==.
                                   1988 ;	interrupts.c:365: TH0 = 0;
      0004D7 75 8C 00         [24] 1989 	mov	_TH0,#0x00
                           00034D  1990 	C$interrupts.c$366$1_0$227 ==.
                                   1991 ;	interrupts.c:366: TL0 = 0;
      0004DA 75 8A 00         [24] 1992 	mov	_TL0,#0x00
                           000350  1993 	C$interrupts.c$367$1_0$227 ==.
                                   1994 ;	interrupts.c:367: return;
                           000350  1995 	C$interrupts.c$369$1_0$227 ==.
                                   1996 ;	interrupts.c:369: }
                           000350  1997 	C$interrupts.c$369$1_0$227 ==.
                           000350  1998 	XG$send_byte_uart_9600$0$0 ==.
      0004DD 22               [24] 1999 	ret
                                   2000 	.area USB_INTERRUPTS(CODE)
                                   2001 	.area CONST   (CODE)
                                   2002 	.area XINIT   (CODE)
                                   2003 	.area CABS    (ABS,CODE)
