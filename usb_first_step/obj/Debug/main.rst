                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.3 #11868 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _sync_delay
                                     13 	.globl _TF1
                                     14 	.globl _TR1
                                     15 	.globl _TF0
                                     16 	.globl _TR0
                                     17 	.globl _IE1
                                     18 	.globl _IT1
                                     19 	.globl _IE0
                                     20 	.globl _IT0
                                     21 	.globl _EX0
                                     22 	.globl _ET0
                                     23 	.globl _EX1
                                     24 	.globl _ET1
                                     25 	.globl _ES0
                                     26 	.globl _ET2
                                     27 	.globl _ES1
                                     28 	.globl _EA
                                     29 	.globl _PA1
                                     30 	.globl _PA0
                                     31 	.globl _EX6
                                     32 	.globl _EX5
                                     33 	.globl _EX4
                                     34 	.globl _EI2C
                                     35 	.globl _EUSB
                                     36 	.globl _EXIF
                                     37 	.globl _EIE
                                     38 	.globl _ACC
                                     39 	.globl _PSW
                                     40 	.globl _IE
                                     41 	.globl _TH1
                                     42 	.globl _TL1
                                     43 	.globl _TH0
                                     44 	.globl _TL0
                                     45 	.globl _TCON
                                     46 	.globl _CKCON
                                     47 	.globl _TMOD
                                     48 	.globl _IOA
                                     49 	.globl _OEA
                                     50 	.globl _MPAGE
                                     51 	.globl __XPAGE
                                     52 	.globl _EP1INCFG
                                     53 	.globl _EP1OUTCFG
                                     54 	.globl _EPIRQ
                                     55 	.globl _EPIE
                                     56 	.globl _EP0BCL
                                     57 	.globl _EP0BCH
                                     58 	.globl _SUDPTRL
                                     59 	.globl _SUDPTRH
                                     60 	.globl _SUDPTRCTL
                                     61 	.globl _EP0CS
                                     62 	.globl _USBIRQ
                                     63 	.globl _USBIE
                                     64 	.globl _INTSETUP
                                     65 	.globl _USBCS
                                     66 	.globl _CPUCS
                                     67 	.globl _flagAltUsb
                                     68 	.globl _flagCfgUsb
                                     69 	.globl _flagGetDesc
                                     70 	.globl _flagStallEP0
                                     71 	.globl _cntTmp
                                     72 	.globl _pCode
                                     73 ;--------------------------------------------------------
                                     74 ; special function registers
                                     75 ;--------------------------------------------------------
                                     76 	.area RSEG    (ABS,DATA)
      000000                         77 	.org 0x0000
                           000092    78 G$_XPAGE$0_0$0 == 0x0092
                           000092    79 __XPAGE	=	0x0092
                           000092    80 G$MPAGE$0_0$0 == 0x0092
                           000092    81 _MPAGE	=	0x0092
                           0000B2    82 G$OEA$0_0$0 == 0x00b2
                           0000B2    83 _OEA	=	0x00b2
                           000080    84 G$IOA$0_0$0 == 0x0080
                           000080    85 _IOA	=	0x0080
                           000089    86 G$TMOD$0_0$0 == 0x0089
                           000089    87 _TMOD	=	0x0089
                           00008E    88 G$CKCON$0_0$0 == 0x008e
                           00008E    89 _CKCON	=	0x008e
                           000088    90 G$TCON$0_0$0 == 0x0088
                           000088    91 _TCON	=	0x0088
                           00008A    92 G$TL0$0_0$0 == 0x008a
                           00008A    93 _TL0	=	0x008a
                           00008C    94 G$TH0$0_0$0 == 0x008c
                           00008C    95 _TH0	=	0x008c
                           00008B    96 G$TL1$0_0$0 == 0x008b
                           00008B    97 _TL1	=	0x008b
                           00008D    98 G$TH1$0_0$0 == 0x008d
                           00008D    99 _TH1	=	0x008d
                           0000A8   100 G$IE$0_0$0 == 0x00a8
                           0000A8   101 _IE	=	0x00a8
                           0000D0   102 G$PSW$0_0$0 == 0x00d0
                           0000D0   103 _PSW	=	0x00d0
                           0000E0   104 G$ACC$0_0$0 == 0x00e0
                           0000E0   105 _ACC	=	0x00e0
                           0000E8   106 G$EIE$0_0$0 == 0x00e8
                           0000E8   107 _EIE	=	0x00e8
                           000091   108 G$EXIF$0_0$0 == 0x0091
                           000091   109 _EXIF	=	0x0091
                                    110 ;--------------------------------------------------------
                                    111 ; special function bits
                                    112 ;--------------------------------------------------------
                                    113 	.area RSEG    (ABS,DATA)
      000000                        114 	.org 0x0000
                           0000E8   115 G$EUSB$0_0$0 == 0x00e8
                           0000E8   116 _EUSB	=	0x00e8
                           0000E9   117 G$EI2C$0_0$0 == 0x00e9
                           0000E9   118 _EI2C	=	0x00e9
                           0000EA   119 G$EX4$0_0$0 == 0x00ea
                           0000EA   120 _EX4	=	0x00ea
                           0000EB   121 G$EX5$0_0$0 == 0x00eb
                           0000EB   122 _EX5	=	0x00eb
                           0000EC   123 G$EX6$0_0$0 == 0x00ec
                           0000EC   124 _EX6	=	0x00ec
                           000080   125 G$PA0$0_0$0 == 0x0080
                           000080   126 _PA0	=	0x0080
                           000081   127 G$PA1$0_0$0 == 0x0081
                           000081   128 _PA1	=	0x0081
                           0000AF   129 G$EA$0_0$0 == 0x00af
                           0000AF   130 _EA	=	0x00af
                           0000AE   131 G$ES1$0_0$0 == 0x00ae
                           0000AE   132 _ES1	=	0x00ae
                           0000AD   133 G$ET2$0_0$0 == 0x00ad
                           0000AD   134 _ET2	=	0x00ad
                           0000AC   135 G$ES0$0_0$0 == 0x00ac
                           0000AC   136 _ES0	=	0x00ac
                           0000AB   137 G$ET1$0_0$0 == 0x00ab
                           0000AB   138 _ET1	=	0x00ab
                           0000AA   139 G$EX1$0_0$0 == 0x00aa
                           0000AA   140 _EX1	=	0x00aa
                           0000A9   141 G$ET0$0_0$0 == 0x00a9
                           0000A9   142 _ET0	=	0x00a9
                           0000A8   143 G$EX0$0_0$0 == 0x00a8
                           0000A8   144 _EX0	=	0x00a8
                           000088   145 G$IT0$0_0$0 == 0x0088
                           000088   146 _IT0	=	0x0088
                           000089   147 G$IE0$0_0$0 == 0x0089
                           000089   148 _IE0	=	0x0089
                           00008A   149 G$IT1$0_0$0 == 0x008a
                           00008A   150 _IT1	=	0x008a
                           00008B   151 G$IE1$0_0$0 == 0x008b
                           00008B   152 _IE1	=	0x008b
                           00008C   153 G$TR0$0_0$0 == 0x008c
                           00008C   154 _TR0	=	0x008c
                           00008D   155 G$TF0$0_0$0 == 0x008d
                           00008D   156 _TF0	=	0x008d
                           00008E   157 G$TR1$0_0$0 == 0x008e
                           00008E   158 _TR1	=	0x008e
                           00008F   159 G$TF1$0_0$0 == 0x008f
                           00008F   160 _TF1	=	0x008f
                                    161 ;--------------------------------------------------------
                                    162 ; overlayable register banks
                                    163 ;--------------------------------------------------------
                                    164 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        165 	.ds 8
                                    166 ;--------------------------------------------------------
                                    167 ; internal ram data
                                    168 ;--------------------------------------------------------
                                    169 	.area DSEG    (DATA)
                           000000   170 G$pCode$0_0$0==.
      000008                        171 _pCode::
      000008                        172 	.ds 2
                           000002   173 G$cntTmp$0_0$0==.
      00000A                        174 _cntTmp::
      00000A                        175 	.ds 1
                                    176 ;--------------------------------------------------------
                                    177 ; overlayable items in internal ram 
                                    178 ;--------------------------------------------------------
                                    179 	.area	OSEG    (OVR,DATA)
                           000000   180 Lmain.main$i$2_0$18==.
      00000B                        181 _main_i_131072_18:
      00000B                        182 	.ds 1
                           000001   183 Lmain.main$j$4_0$20==.
      00000C                        184 _main_j_262144_20:
      00000C                        185 	.ds 1
                                    186 ;--------------------------------------------------------
                                    187 ; Stack segment in internal ram 
                                    188 ;--------------------------------------------------------
                                    189 	.area	SSEG
      000041                        190 __start__stack:
      000041                        191 	.ds	1
                                    192 
                                    193 ;--------------------------------------------------------
                                    194 ; indirectly addressable internal ram data
                                    195 ;--------------------------------------------------------
                                    196 	.area ISEG    (DATA)
                                    197 ;--------------------------------------------------------
                                    198 ; absolute internal ram data
                                    199 ;--------------------------------------------------------
                                    200 	.area IABS    (ABS,DATA)
                                    201 	.area IABS    (ABS,DATA)
                                    202 ;--------------------------------------------------------
                                    203 ; bit data
                                    204 ;--------------------------------------------------------
                                    205 	.area BSEG    (BIT)
                           000000   206 G$flagStallEP0$0_0$0==.
      000000                        207 _flagStallEP0::
      000000                        208 	.ds 1
                           000001   209 G$flagGetDesc$0_0$0==.
      000001                        210 _flagGetDesc::
      000001                        211 	.ds 1
                           000002   212 G$flagCfgUsb$0_0$0==.
      000002                        213 _flagCfgUsb::
      000002                        214 	.ds 1
                           000003   215 G$flagAltUsb$0_0$0==.
      000003                        216 _flagAltUsb::
      000003                        217 	.ds 1
                                    218 ;--------------------------------------------------------
                                    219 ; paged external ram data
                                    220 ;--------------------------------------------------------
                                    221 	.area PSEG    (PAG,XDATA)
                                    222 ;--------------------------------------------------------
                                    223 ; external ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area XSEG    (XDATA)
                           00E600   226 G$CPUCS$0_0$0 == 0xe600
                           00E600   227 _CPUCS	=	0xe600
                           00E680   228 G$USBCS$0_0$0 == 0xe680
                           00E680   229 _USBCS	=	0xe680
                           00E668   230 G$INTSETUP$0_0$0 == 0xe668
                           00E668   231 _INTSETUP	=	0xe668
                           00E65C   232 G$USBIE$0_0$0 == 0xe65c
                           00E65C   233 _USBIE	=	0xe65c
                           00E65D   234 G$USBIRQ$0_0$0 == 0xe65d
                           00E65D   235 _USBIRQ	=	0xe65d
                           00E6A0   236 G$EP0CS$0_0$0 == 0xe6a0
                           00E6A0   237 _EP0CS	=	0xe6a0
                           00E6B5   238 G$SUDPTRCTL$0_0$0 == 0xe6b5
                           00E6B5   239 _SUDPTRCTL	=	0xe6b5
                           00E6B3   240 G$SUDPTRH$0_0$0 == 0xe6b3
                           00E6B3   241 _SUDPTRH	=	0xe6b3
                           00E6B4   242 G$SUDPTRL$0_0$0 == 0xe6b4
                           00E6B4   243 _SUDPTRL	=	0xe6b4
                           00E68A   244 G$EP0BCH$0_0$0 == 0xe68a
                           00E68A   245 _EP0BCH	=	0xe68a
                           00E68B   246 G$EP0BCL$0_0$0 == 0xe68b
                           00E68B   247 _EP0BCL	=	0xe68b
                           00E65E   248 G$EPIE$0_0$0 == 0xe65e
                           00E65E   249 _EPIE	=	0xe65e
                           00E65F   250 G$EPIRQ$0_0$0 == 0xe65f
                           00E65F   251 _EPIRQ	=	0xe65f
                           00E610   252 G$EP1OUTCFG$0_0$0 == 0xe610
                           00E610   253 _EP1OUTCFG	=	0xe610
                           00E611   254 G$EP1INCFG$0_0$0 == 0xe611
                           00E611   255 _EP1INCFG	=	0xe611
                                    256 ;--------------------------------------------------------
                                    257 ; absolute external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XABS    (ABS,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; external initialized ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XISEG   (XDATA)
                                    264 	.area HOME    (CODE)
                                    265 	.area GSINIT0 (CODE)
                                    266 	.area GSINIT1 (CODE)
                                    267 	.area GSINIT2 (CODE)
                                    268 	.area GSINIT3 (CODE)
                                    269 	.area GSINIT4 (CODE)
                                    270 	.area GSINIT5 (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 	.area GSFINAL (CODE)
                                    273 	.area CSEG    (CODE)
                                    274 ;--------------------------------------------------------
                                    275 ; interrupt vector 
                                    276 ;--------------------------------------------------------
                                    277 	.area HOME    (CODE)
      000000                        278 __interrupt_vect:
      000000 02 00 6B         [24]  279 	ljmp	__sdcc_gsinit_startup
      000003 02 01 99         [24]  280 	ljmp	_int0
      000006                        281 	.ds	5
      00000B 02 01 9A         [24]  282 	ljmp	_tim0
      00000E                        283 	.ds	5
      000013 02 01 9B         [24]  284 	ljmp	_int1
      000016                        285 	.ds	5
      00001B 02 01 9C         [24]  286 	ljmp	_tim1
      00001E                        287 	.ds	5
      000023 02 01 9D         [24]  288 	ljmp	_usart0
      000026                        289 	.ds	5
      00002B 02 01 9E         [24]  290 	ljmp	_tim2
      00002E                        291 	.ds	5
      000033 02 01 9F         [24]  292 	ljmp	_res
      000036                        293 	.ds	5
      00003B 02 01 A0         [24]  294 	ljmp	_usart1
      00003E                        295 	.ds	5
      000043 02 01 A1         [24]  296 	ljmp	_usb
      000046                        297 	.ds	5
      00004B 02 01 A2         [24]  298 	ljmp	_i2c
      00004E                        299 	.ds	5
      000053 02 01 A3         [24]  300 	ljmp	_int4
      000056                        301 	.ds	5
      00005B 02 01 A4         [24]  302 	ljmp	_int5
      00005E                        303 	.ds	5
      000063 02 01 A5         [24]  304 	ljmp	_int6
                                    305 ;--------------------------------------------------------
                                    306 ; global & static initialisations
                                    307 ;--------------------------------------------------------
                                    308 	.area HOME    (CODE)
                                    309 	.area GSINIT  (CODE)
                                    310 	.area GSFINAL (CODE)
                                    311 	.area GSINIT  (CODE)
                                    312 	.globl __sdcc_gsinit_startup
                                    313 	.globl __sdcc_program_startup
                                    314 	.globl __start__stack
                                    315 	.globl __mcs51_genXINIT
                                    316 	.globl __mcs51_genXRAMCLEAR
                                    317 	.globl __mcs51_genRAMCLEAR
                                    318 	.area GSFINAL (CODE)
      000118 02 00 66         [24]  319 	ljmp	__sdcc_program_startup
                                    320 ;--------------------------------------------------------
                                    321 ; Home
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
                                    324 	.area HOME    (CODE)
      000066                        325 __sdcc_program_startup:
      000066 02 01 26         [24]  326 	ljmp	_main
                                    327 ;	return from main will return to caller
                                    328 ;--------------------------------------------------------
                                    329 ; code
                                    330 ;--------------------------------------------------------
                                    331 	.area CSEG    (CODE)
                                    332 ;------------------------------------------------------------
                                    333 ;Allocation info for local variables in function 'sync_delay'
                                    334 ;------------------------------------------------------------
                           000000   335 	G$sync_delay$0$0 ==.
                           000000   336 	C$main.c$21$0_0$15 ==.
                                    337 ;	main.c:21: void sync_delay (void) __naked
                                    338 ;	-----------------------------------------
                                    339 ;	 function sync_delay
                                    340 ;	-----------------------------------------
      00011B                        341 _sync_delay:
                                    342 ;	naked function: no prologue.
                           000000   343 	C$main.c$35$1_0$15 ==.
                                    344 ;	main.c:35: __endasm;
      00011B 00               [12]  345 	nop
      00011C 00               [12]  346 	nop
      00011D 00               [12]  347 	nop
      00011E 00               [12]  348 	nop
      00011F 00               [12]  349 	nop
      000120 00               [12]  350 	nop
      000121 00               [12]  351 	nop
      000122 00               [12]  352 	nop
      000123 00               [12]  353 	nop
      000124 00               [12]  354 	nop
      000125 22               [24]  355 	ret
                           00000B   356 	C$main.c$36$1_0$15 ==.
                                    357 ;	main.c:36: }
                                    358 ;	naked function: no epilogue.
                           00000B   359 	C$main.c$36$1_0$15 ==.
                           00000B   360 	XG$sync_delay$0$0 ==.
                                    361 ;------------------------------------------------------------
                                    362 ;Allocation info for local variables in function 'main'
                                    363 ;------------------------------------------------------------
                                    364 ;i                         Allocated with name '_main_i_131072_18'
                                    365 ;j                         Allocated with name '_main_j_262144_20'
                                    366 ;------------------------------------------------------------
                           00000B   367 	G$main$0$0 ==.
                           00000B   368 	C$main.c$45$1_0$17 ==.
                                    369 ;	main.c:45: void main(void)
                                    370 ;	-----------------------------------------
                                    371 ;	 function main
                                    372 ;	-----------------------------------------
      000126                        373 _main:
                           000007   374 	ar7 = 0x07
                           000006   375 	ar6 = 0x06
                           000005   376 	ar5 = 0x05
                           000004   377 	ar4 = 0x04
                           000003   378 	ar3 = 0x03
                           000002   379 	ar2 = 0x02
                           000001   380 	ar1 = 0x01
                           000000   381 	ar0 = 0x00
                           00000B   382 	C$main.c$48$1_0$17 ==.
                                    383 ;	main.c:48: OEA = 0xFF; // PA1 input
      000126 75 B2 FF         [24]  384 	mov	_OEA,#0xff
                           00000E   385 	C$main.c$49$1_0$17 ==.
                                    386 ;	main.c:49: PA0 = 1;// UART TX
                                    387 ;	assignBit
      000129 D2 80            [12]  388 	setb	_PA0
                           000010   389 	C$main.c$51$1_0$17 ==.
                                    390 ;	main.c:51: PA0=1;
                                    391 ;	assignBit
      00012B D2 80            [12]  392 	setb	_PA0
                           000012   393 	C$main.c$52$1_0$17 ==.
                                    394 ;	main.c:52: PA1=1;
                                    395 ;	assignBit
      00012D D2 81            [12]  396 	setb	_PA1
                           000014   397 	C$main.c$55$1_0$17 ==.
                                    398 ;	main.c:55: EP0BCH = 0x00;
      00012F 90 E6 8A         [24]  399 	mov	dptr,#_EP0BCH
      000132 E4               [12]  400 	clr	a
      000133 F0               [24]  401 	movx	@dptr,a
                           000019   402 	C$main.c$56$1_0$17 ==.
                                    403 ;	main.c:56: USBCS |= (1 << bDISCON);// отключение от линии USB
      000134 90 E6 80         [24]  404 	mov	dptr,#_USBCS
      000137 E0               [24]  405 	movx	a,@dptr
      000138 43 E0 08         [24]  406 	orl	acc,#0x08
      00013B F0               [24]  407 	movx	@dptr,a
                           000021   408 	C$main.c$57$3_0$18 ==.
                                    409 ;	main.c:57: for (volatile char i = 0; i < 255; i++)
      00013C 75 0B 00         [24]  410 	mov	_main_i_131072_18,#0x00
      00013F                        411 00112$:
      00013F 74 01            [12]  412 	mov	a,#0x100 - 0xff
      000141 25 0B            [12]  413 	add	a,_main_i_131072_18
      000143 40 17            [24]  414 	jc	00102$
                           00002A   415 	C$main.c$59$5_0$20 ==.
                                    416 ;	main.c:59: for (volatile char j = 0; j < 255; j++)
      000145 75 0C 00         [24]  417 	mov	_main_j_262144_20,#0x00
      000148                        418 00109$:
      000148 74 01            [12]  419 	mov	a,#0x100 - 0xff
      00014A 25 0C            [12]  420 	add	a,_main_j_262144_20
      00014C 40 07            [24]  421 	jc	00113$
      00014E E5 0C            [12]  422 	mov	a,_main_j_262144_20
      000150 04               [12]  423 	inc	a
      000151 F5 0C            [12]  424 	mov	_main_j_262144_20,a
      000153 80 F3            [24]  425 	sjmp	00109$
      000155                        426 00113$:
                           00003A   427 	C$main.c$57$2_0$18 ==.
                                    428 ;	main.c:57: for (volatile char i = 0; i < 255; i++)
      000155 E5 0B            [12]  429 	mov	a,_main_i_131072_18
      000157 04               [12]  430 	inc	a
      000158 F5 0B            [12]  431 	mov	_main_i_131072_18,a
      00015A 80 E3            [24]  432 	sjmp	00112$
      00015C                        433 00102$:
                           000041   434 	C$main.c$65$1_0$17 ==.
                                    435 ;	main.c:65: INTSETUP = (1<<bAV2EN);// разрешение для модуля USB
      00015C 90 E6 68         [24]  436 	mov	dptr,#_INTSETUP
      00015F 74 08            [12]  437 	mov	a,#0x08
      000161 F0               [24]  438 	movx	@dptr,a
                           000047   439 	C$main.c$66$1_0$17 ==.
                                    440 ;	main.c:66: USBIE = (1<<bSUDAV) ;
      000162 90 E6 5C         [24]  441 	mov	dptr,#_USBIE
      000165 74 01            [12]  442 	mov	a,#0x01
      000167 F0               [24]  443 	movx	@dptr,a
                           00004D   444 	C$main.c$67$1_0$17 ==.
                                    445 ;	main.c:67: EUSB = 1; // разрешение общего прерывания для USB
                                    446 ;	assignBit
      000168 D2 E8            [12]  447 	setb	_EUSB
                           00004F   448 	C$main.c$68$1_0$17 ==.
                                    449 ;	main.c:68: USBCS = (1<<bRENUM);// перехват работы с USB
      00016A 90 E6 80         [24]  450 	mov	dptr,#_USBCS
      00016D 74 02            [12]  451 	mov	a,#0x02
      00016F F0               [24]  452 	movx	@dptr,a
                           000055   453 	C$main.c$69$1_0$17 ==.
                                    454 ;	main.c:69: EA = 1;// разрешение прерываний
                                    455 ;	assignBit
      000170 D2 AF            [12]  456 	setb	_EA
                           000057   457 	C$main.c$75$1_0$17 ==.
                                    458 ;	main.c:75: if (!(CPUCS & 0x08))
      000172 90 E6 00         [24]  459 	mov	dptr,#_CPUCS
      000175 E0               [24]  460 	movx	a,@dptr
      000176 20 E3 08         [24]  461 	jb	acc.3,00104$
                           00005E   462 	C$main.c$76$1_0$17 ==.
                                    463 ;	main.c:76: (CPUCS |= 0x08); // проверяем частоту, если не 24, то устанавливаем 24
      000179 90 E6 00         [24]  464 	mov	dptr,#_CPUCS
      00017C E0               [24]  465 	movx	a,@dptr
      00017D 43 E0 08         [24]  466 	orl	acc,#0x08
      000180 F0               [24]  467 	movx	@dptr,a
      000181                        468 00104$:
                           000066   469 	C$main.c$78$1_0$17 ==.
                                    470 ;	main.c:78: SUDPTRCTL = 0x00; // включаем систему автоматической передачи дескрипторов
      000181 90 E6 B5         [24]  471 	mov	dptr,#_SUDPTRCTL
      000184 E4               [12]  472 	clr	a
      000185 F0               [24]  473 	movx	@dptr,a
                           00006B   474 	C$main.c$82$1_0$17 ==.
                                    475 ;	main.c:82: while (1);
      000186                        476 00106$:
      000186 80 FE            [24]  477 	sjmp	00106$
                           00006D   478 	C$main.c$84$1_0$17 ==.
                                    479 ;	main.c:84: }
                           00006D   480 	C$main.c$84$1_0$17 ==.
                           00006D   481 	XG$main$0$0 ==.
      000188 22               [24]  482 	ret
                                    483 	.area CSEG    (CODE)
                                    484 	.area CONST   (CODE)
                                    485 	.area XINIT   (CODE)
                                    486 	.area CABS    (ABS,CODE)
