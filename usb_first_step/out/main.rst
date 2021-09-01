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
                                     52 	.globl _EPIRQ
                                     53 	.globl _EPIE
                                     54 	.globl _EP0BCL
                                     55 	.globl _EP0BCH
                                     56 	.globl _SUDPTRL
                                     57 	.globl _SUDPTRH
                                     58 	.globl _SUDPTRCTL
                                     59 	.globl _EP0CS
                                     60 	.globl _USBIRQ
                                     61 	.globl _USBIE
                                     62 	.globl _INTSETUP
                                     63 	.globl _USBCS
                                     64 	.globl _CPUCS
                                     65 	.globl _flagGetDesc
                                     66 	.globl _flagStallEP0
                                     67 	.globl _cntTmp
                                     68 	.globl _pCode
                                     69 ;--------------------------------------------------------
                                     70 ; special function registers
                                     71 ;--------------------------------------------------------
                                     72 	.area RSEG    (ABS,DATA)
      000000                         73 	.org 0x0000
                           000092    74 __XPAGE	=	0x0092
                           000092    75 _MPAGE	=	0x0092
                           0000B2    76 _OEA	=	0x00b2
                           000080    77 _IOA	=	0x0080
                           000089    78 _TMOD	=	0x0089
                           00008E    79 _CKCON	=	0x008e
                           000088    80 _TCON	=	0x0088
                           00008A    81 _TL0	=	0x008a
                           00008C    82 _TH0	=	0x008c
                           00008B    83 _TL1	=	0x008b
                           00008D    84 _TH1	=	0x008d
                           0000A8    85 _IE	=	0x00a8
                           0000D0    86 _PSW	=	0x00d0
                           0000E0    87 _ACC	=	0x00e0
                           0000E8    88 _EIE	=	0x00e8
                           000091    89 _EXIF	=	0x0091
                                     90 ;--------------------------------------------------------
                                     91 ; special function bits
                                     92 ;--------------------------------------------------------
                                     93 	.area RSEG    (ABS,DATA)
      000000                         94 	.org 0x0000
                           0000E8    95 _EUSB	=	0x00e8
                           0000E9    96 _EI2C	=	0x00e9
                           0000EA    97 _EX4	=	0x00ea
                           0000EB    98 _EX5	=	0x00eb
                           0000EC    99 _EX6	=	0x00ec
                           000080   100 _PA0	=	0x0080
                           000081   101 _PA1	=	0x0081
                           0000AF   102 _EA	=	0x00af
                           0000AE   103 _ES1	=	0x00ae
                           0000AD   104 _ET2	=	0x00ad
                           0000AC   105 _ES0	=	0x00ac
                           0000AB   106 _ET1	=	0x00ab
                           0000AA   107 _EX1	=	0x00aa
                           0000A9   108 _ET0	=	0x00a9
                           0000A8   109 _EX0	=	0x00a8
                           000088   110 _IT0	=	0x0088
                           000089   111 _IE0	=	0x0089
                           00008A   112 _IT1	=	0x008a
                           00008B   113 _IE1	=	0x008b
                           00008C   114 _TR0	=	0x008c
                           00008D   115 _TF0	=	0x008d
                           00008E   116 _TR1	=	0x008e
                           00008F   117 _TF1	=	0x008f
                                    118 ;--------------------------------------------------------
                                    119 ; overlayable register banks
                                    120 ;--------------------------------------------------------
                                    121 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        122 	.ds 8
                                    123 ;--------------------------------------------------------
                                    124 ; internal ram data
                                    125 ;--------------------------------------------------------
                                    126 	.area DSEG    (DATA)
      000008                        127 _pCode::
      000008                        128 	.ds 2
      00000A                        129 _cntTmp::
      00000A                        130 	.ds 1
                                    131 ;--------------------------------------------------------
                                    132 ; overlayable items in internal ram 
                                    133 ;--------------------------------------------------------
                                    134 	.area	OSEG    (OVR,DATA)
      00000B                        135 _main_i_131072_18:
      00000B                        136 	.ds 1
      00000C                        137 _main_j_262144_20:
      00000C                        138 	.ds 1
                                    139 ;--------------------------------------------------------
                                    140 ; Stack segment in internal ram 
                                    141 ;--------------------------------------------------------
                                    142 	.area	SSEG
      000041                        143 __start__stack:
      000041                        144 	.ds	1
                                    145 
                                    146 ;--------------------------------------------------------
                                    147 ; indirectly addressable internal ram data
                                    148 ;--------------------------------------------------------
                                    149 	.area ISEG    (DATA)
                                    150 ;--------------------------------------------------------
                                    151 ; absolute internal ram data
                                    152 ;--------------------------------------------------------
                                    153 	.area IABS    (ABS,DATA)
                                    154 	.area IABS    (ABS,DATA)
                                    155 ;--------------------------------------------------------
                                    156 ; bit data
                                    157 ;--------------------------------------------------------
                                    158 	.area BSEG    (BIT)
      000000                        159 _flagStallEP0::
      000000                        160 	.ds 1
      000001                        161 _flagGetDesc::
      000001                        162 	.ds 1
                                    163 ;--------------------------------------------------------
                                    164 ; paged external ram data
                                    165 ;--------------------------------------------------------
                                    166 	.area PSEG    (PAG,XDATA)
                                    167 ;--------------------------------------------------------
                                    168 ; external ram data
                                    169 ;--------------------------------------------------------
                                    170 	.area XSEG    (XDATA)
                           00E600   171 _CPUCS	=	0xe600
                           00E680   172 _USBCS	=	0xe680
                           00E668   173 _INTSETUP	=	0xe668
                           00E65C   174 _USBIE	=	0xe65c
                           00E65D   175 _USBIRQ	=	0xe65d
                           00E6A0   176 _EP0CS	=	0xe6a0
                           00E6B5   177 _SUDPTRCTL	=	0xe6b5
                           00E6B3   178 _SUDPTRH	=	0xe6b3
                           00E6B4   179 _SUDPTRL	=	0xe6b4
                           00E68A   180 _EP0BCH	=	0xe68a
                           00E68B   181 _EP0BCL	=	0xe68b
                           00E65E   182 _EPIE	=	0xe65e
                           00E65F   183 _EPIRQ	=	0xe65f
                                    184 ;--------------------------------------------------------
                                    185 ; absolute external ram data
                                    186 ;--------------------------------------------------------
                                    187 	.area XABS    (ABS,XDATA)
                                    188 ;--------------------------------------------------------
                                    189 ; external initialized ram data
                                    190 ;--------------------------------------------------------
                                    191 	.area XISEG   (XDATA)
                                    192 	.area HOME    (CODE)
                                    193 	.area GSINIT0 (CODE)
                                    194 	.area GSINIT1 (CODE)
                                    195 	.area GSINIT2 (CODE)
                                    196 	.area GSINIT3 (CODE)
                                    197 	.area GSINIT4 (CODE)
                                    198 	.area GSINIT5 (CODE)
                                    199 	.area GSINIT  (CODE)
                                    200 	.area GSFINAL (CODE)
                                    201 	.area CSEG    (CODE)
                                    202 ;--------------------------------------------------------
                                    203 ; interrupt vector 
                                    204 ;--------------------------------------------------------
                                    205 	.area HOME    (CODE)
      000000                        206 __interrupt_vect:
      000000 02 00 6B         [24]  207 	ljmp	__sdcc_gsinit_startup
      000003 02 20 0C         [24]  208 	ljmp	_int0
      000006                        209 	.ds	5
      00000B 02 20 0D         [24]  210 	ljmp	_tim0
      00000E                        211 	.ds	5
      000013 02 20 0E         [24]  212 	ljmp	_int1
      000016                        213 	.ds	5
      00001B 02 20 0F         [24]  214 	ljmp	_tim1
      00001E                        215 	.ds	5
      000023 02 20 10         [24]  216 	ljmp	_usart0
      000026                        217 	.ds	5
      00002B 02 20 11         [24]  218 	ljmp	_tim2
      00002E                        219 	.ds	5
      000033 02 20 12         [24]  220 	ljmp	_res
      000036                        221 	.ds	5
      00003B 02 20 13         [24]  222 	ljmp	_usart1
      00003E                        223 	.ds	5
      000043 02 20 14         [24]  224 	ljmp	_usb
      000046                        225 	.ds	5
      00004B 02 20 15         [24]  226 	ljmp	_i2c
      00004E                        227 	.ds	5
      000053 02 20 16         [24]  228 	ljmp	_int4
      000056                        229 	.ds	5
      00005B 02 20 17         [24]  230 	ljmp	_int5
      00005E                        231 	.ds	5
      000063 02 20 18         [24]  232 	ljmp	_int6
                                    233 ;--------------------------------------------------------
                                    234 ; global & static initialisations
                                    235 ;--------------------------------------------------------
                                    236 	.area HOME    (CODE)
                                    237 	.area GSINIT  (CODE)
                                    238 	.area GSFINAL (CODE)
                                    239 	.area GSINIT  (CODE)
                                    240 	.globl __sdcc_gsinit_startup
                                    241 	.globl __sdcc_program_startup
                                    242 	.globl __start__stack
                                    243 	.globl __mcs51_genXINIT
                                    244 	.globl __mcs51_genXRAMCLEAR
                                    245 	.globl __mcs51_genRAMCLEAR
                                    246 	.area GSFINAL (CODE)
      000118 02 00 66         [24]  247 	ljmp	__sdcc_program_startup
                                    248 ;--------------------------------------------------------
                                    249 ; Home
                                    250 ;--------------------------------------------------------
                                    251 	.area HOME    (CODE)
                                    252 	.area HOME    (CODE)
      000066                        253 __sdcc_program_startup:
      000066 02 01 26         [24]  254 	ljmp	_main
                                    255 ;	return from main will return to caller
                                    256 ;--------------------------------------------------------
                                    257 ; code
                                    258 ;--------------------------------------------------------
                                    259 	.area CSEG    (CODE)
                                    260 ;------------------------------------------------------------
                                    261 ;Allocation info for local variables in function 'sync_delay'
                                    262 ;------------------------------------------------------------
                                    263 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:21: void sync_delay (void) __naked
                                    264 ;	-----------------------------------------
                                    265 ;	 function sync_delay
                                    266 ;	-----------------------------------------
      00011B                        267 _sync_delay:
                                    268 ;	naked function: no prologue.
                                    269 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:35: __endasm;
      00011B 00               [12]  270 	nop
      00011C 00               [12]  271 	nop
      00011D 00               [12]  272 	nop
      00011E 00               [12]  273 	nop
      00011F 00               [12]  274 	nop
      000120 00               [12]  275 	nop
      000121 00               [12]  276 	nop
      000122 00               [12]  277 	nop
      000123 00               [12]  278 	nop
      000124 00               [12]  279 	nop
      000125 22               [24]  280 	ret
                                    281 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:36: }
                                    282 ;	naked function: no epilogue.
                                    283 ;------------------------------------------------------------
                                    284 ;Allocation info for local variables in function 'main'
                                    285 ;------------------------------------------------------------
                                    286 ;i                         Allocated with name '_main_i_131072_18'
                                    287 ;j                         Allocated with name '_main_j_262144_20'
                                    288 ;------------------------------------------------------------
                                    289 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:43: void main(void)
                                    290 ;	-----------------------------------------
                                    291 ;	 function main
                                    292 ;	-----------------------------------------
      000126                        293 _main:
                           000007   294 	ar7 = 0x07
                           000006   295 	ar6 = 0x06
                           000005   296 	ar5 = 0x05
                           000004   297 	ar4 = 0x04
                           000003   298 	ar3 = 0x03
                           000002   299 	ar2 = 0x02
                           000001   300 	ar1 = 0x01
                           000000   301 	ar0 = 0x00
                                    302 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:46: OEA = 0xFF; // PA1 input
      000126 75 B2 FF         [24]  303 	mov	_OEA,#0xff
                                    304 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:47: PA0 = 1;// UART TX
                                    305 ;	assignBit
      000129 D2 80            [12]  306 	setb	_PA0
                                    307 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:49: PA0=1;
                                    308 ;	assignBit
      00012B D2 80            [12]  309 	setb	_PA0
                                    310 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:50: PA1=1;
                                    311 ;	assignBit
      00012D D2 81            [12]  312 	setb	_PA1
                                    313 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:53: EP0BCH = 0x00;
      00012F 90 E6 8A         [24]  314 	mov	dptr,#_EP0BCH
      000132 E4               [12]  315 	clr	a
      000133 F0               [24]  316 	movx	@dptr,a
                                    317 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:54: USBCS |= (1 << bDISCON);// отключение от линии USB
      000134 90 E6 80         [24]  318 	mov	dptr,#_USBCS
      000137 E0               [24]  319 	movx	a,@dptr
      000138 43 E0 08         [24]  320 	orl	acc,#0x08
      00013B F0               [24]  321 	movx	@dptr,a
                                    322 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:55: for (volatile char i = 0; i < 255; i++)
      00013C 75 0B 00         [24]  323 	mov	_main_i_131072_18,#0x00
      00013F                        324 00112$:
      00013F 74 01            [12]  325 	mov	a,#0x100 - 0xff
      000141 25 0B            [12]  326 	add	a,_main_i_131072_18
      000143 40 17            [24]  327 	jc	00102$
                                    328 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:57: for (volatile char j = 0; j < 255; j++)
      000145 75 0C 00         [24]  329 	mov	_main_j_262144_20,#0x00
      000148                        330 00109$:
      000148 74 01            [12]  331 	mov	a,#0x100 - 0xff
      00014A 25 0C            [12]  332 	add	a,_main_j_262144_20
      00014C 40 07            [24]  333 	jc	00113$
      00014E E5 0C            [12]  334 	mov	a,_main_j_262144_20
      000150 04               [12]  335 	inc	a
      000151 F5 0C            [12]  336 	mov	_main_j_262144_20,a
      000153 80 F3            [24]  337 	sjmp	00109$
      000155                        338 00113$:
                                    339 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:55: for (volatile char i = 0; i < 255; i++)
      000155 E5 0B            [12]  340 	mov	a,_main_i_131072_18
      000157 04               [12]  341 	inc	a
      000158 F5 0B            [12]  342 	mov	_main_i_131072_18,a
      00015A 80 E3            [24]  343 	sjmp	00112$
      00015C                        344 00102$:
                                    345 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:63: INTSETUP = (1<<bAV2EN);// разрешение для модуля USB
      00015C 90 E6 68         [24]  346 	mov	dptr,#_INTSETUP
      00015F 74 08            [12]  347 	mov	a,#0x08
      000161 F0               [24]  348 	movx	@dptr,a
                                    349 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:64: USBIE = (1<<bSUDAV) ;
      000162 90 E6 5C         [24]  350 	mov	dptr,#_USBIE
      000165 74 01            [12]  351 	mov	a,#0x01
      000167 F0               [24]  352 	movx	@dptr,a
                                    353 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:65: EUSB = 1; // разрешение общего прерывания для USB
                                    354 ;	assignBit
      000168 D2 E8            [12]  355 	setb	_EUSB
                                    356 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:66: USBCS = (1<<bRENUM);// перехват работы с USB
      00016A 90 E6 80         [24]  357 	mov	dptr,#_USBCS
      00016D 74 02            [12]  358 	mov	a,#0x02
      00016F F0               [24]  359 	movx	@dptr,a
                                    360 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:67: EA = 1;// разрешение прерываний
                                    361 ;	assignBit
      000170 D2 AF            [12]  362 	setb	_EA
                                    363 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:73: if (!(CPUCS & 0x08))
      000172 90 E6 00         [24]  364 	mov	dptr,#_CPUCS
      000175 E0               [24]  365 	movx	a,@dptr
      000176 20 E3 08         [24]  366 	jb	acc.3,00104$
                                    367 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:74: (CPUCS |= 0x08); // проверяем частоту, если не 24, то устанавливаем 24
      000179 90 E6 00         [24]  368 	mov	dptr,#_CPUCS
      00017C E0               [24]  369 	movx	a,@dptr
      00017D 43 E0 08         [24]  370 	orl	acc,#0x08
      000180 F0               [24]  371 	movx	@dptr,a
      000181                        372 00104$:
                                    373 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:76: SUDPTRCTL = 0x00; // включаем систему автоматической передачи дескрипторов
      000181 90 E6 B5         [24]  374 	mov	dptr,#_SUDPTRCTL
      000184 E4               [12]  375 	clr	a
      000185 F0               [24]  376 	movx	@dptr,a
                                    377 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:80: while (1);
      000186                        378 00106$:
                                    379 ;	D:\ProgramData\CodeBlocks\msc-51\fx2lp\usb_first_step\main.c:82: }
      000186 80 FE            [24]  380 	sjmp	00106$
                                    381 	.area CSEG    (CODE)
                                    382 	.area CONST   (CODE)
                                    383 	.area XINIT   (CODE)
                                    384 	.area CABS    (ABS,CODE)
