#BEGIN Preamble
	REG	r0
	REG	r1
	REG	r2
	REG	r3
	REG	r4
	REG	r5
	REG	r6
	REG	r7
	REG	r8
	REG	r9
	REG	r10
	REG	r11
	REG	r12
	REG	r13
	REG	r14
	REG	r15
	REG	r16
	REG	r17
	REG	r18
	REG	r19
	REG	r20
	REG	r21
	REG	r22
	REG	r23
	REG	r24
	REG	r25
	REG	r26
	REG	r27
	REG	r28
	REG	r29
	REG	r30
	REG	r31
	LOADIMM	r0, 0
	ADDI	r1, r0, 8192
start:	brlid	r15, main
	NOP
	HALT
#END Preamble
#	.file	"rt.bc"
#	.text
#	.globl	main
#	.align	2
#	.type	main,@function
#	.ent	main                    # @main
main:
#	.frame	r1,520,r15
#	.mask	0xfff00000
	ADDI	r1,	r1,	-520
	SWI	r20,	r1,	44
	SWI	r21,	r1,	40
	SWI	r22,	r1,	36
	SWI	r23,	r1,	32
	SWI	r24,	r1,	28
	SWI	r25,	r1,	24
	SWI	r26,	r1,	20
	SWI	r27,	r1,	16
	SWI	r28,	r1,	12
	SWI	r29,	r1,	8
	SWI	r30,	r1,	4
	SWI	r31,	r1,	0
	ADD	r3,	r0,	r0
	LOAD	r4,	r3,	1
	SWI	r4,	r1,	516
	LOAD	r5,	r3,	4
	LOAD	r6,	r3,	7
	SWI	r6,	r1,	456
	LOAD	r6,	r3,	12
	LOAD	r7,	r6,	0
	SWI	r7,	r1,	424
	LOAD	r7,	r6,	1
	SWI	r7,	r1,	428
	LOAD	r6,	r6,	2
	SWI	r6,	r1,	432
	LOAD	r6,	r3,	10
	LOAD	r7,	r6,	0
	SWI	r7,	r1,	380
	LOAD	r7,	r6,	1
	SWI	r7,	r1,	384
	LOAD	r7,	r6,	2
	SWI	r7,	r1,	420
	ADDI	r7,	r6,	9
	LOAD	r8,	r7,	0
	LOAD	r8,	r7,	1
	ADDI	r8,	r6,	12
	LOAD	r7,	r7,	2
	LOAD	r7,	r8,	0
	SWI	r7,	r1,	460
	LOAD	r7,	r8,	1
	SWI	r7,	r1,	464
	LOAD	r7,	r8,	2
	SWI	r7,	r1,	468
	ADDI	r7,	r6,	15
	LOAD	r8,	r7,	0
	SWI	r8,	r1,	472
	LOAD	r8,	r7,	1
	SWI	r8,	r1,	476
	LOAD	r7,	r7,	2
	SWI	r7,	r1,	480
	ADDI	r6,	r6,	18
	LOAD	r7,	r6,	0
	SWI	r7,	r1,	484
	LOAD	r7,	r6,	1
	SWI	r7,	r1,	488
	LOAD	r6,	r6,	2
	SWI	r6,	r1,	492
	LOAD	r6,	r3,	28
	SWI	r6,	r1,	496
	LOAD	r3,	r3,	29
	SWI	r3,	r1,	444
	FPCONV	r3,	r4
	SWI	r3,	r1,	448
	FPCONV	r3,	r5
	SWI	r3,	r1,	452
	ORI	r3,	r0,	-1073741824
	MUL	r4,	r5,	r4
	SWI	r4,	r1,	508
	ATOMIC_INC	r5,	0
	CMP	r4,	r5,	r4
	bleid	r4,	$0BB0_79
	NOP
	LWI	r4,	r1,	448
	FPDIV	r4,	r4,	r3
	SWI	r4,	r1,	500
	LWI	r4,	r1,	452
	FPDIV	r3,	r4,	r3
	SWI	r3,	r1,	504
	LWI	r3,	r1,	420
	SWI	r3,	r1,	56
	LWI	r3,	r1,	384
	SWI	r3,	r1,	52
	LWI	r3,	r1,	380
	SWI	r3,	r1,	48
	ADD	r3,	r0,	r0
	SWI	r3,	r1,	512
	LWI	r3,	r1,	56
	SWI	r3,	r1,	436
$0BB0_2:
	LWI	r3,	r1,	516
	DIV	r4,	r3,	r5
	MUL	r3,	r4,	r3
	RSUB	r3,	r3,	r5
	FPCONV	r4,	r4
	FPCONV	r3,	r3
	LWI	r6,	r1,	504
	FPADD	r4,	r4,	r6
	ORI	r6,	r0,	1056964608
	LWI	r7,	r1,	500
	FPADD	r3,	r3,	r7
	FPADD	r4,	r4,	r6
	FPADD	r3,	r3,	r6
	FPADD	r4,	r4,	r4
	FPADD	r3,	r3,	r3
	LWI	r6,	r1,	452
	FPDIV	r4,	r4,	r6
	LWI	r6,	r1,	448
	FPDIV	r3,	r3,	r6
	LWI	r6,	r1,	488
	FPMUL	r6,	r6,	r4
	LWI	r7,	r1,	476
	FPMUL	r7,	r7,	r3
	LWI	r8,	r1,	484
	FPMUL	r8,	r8,	r4
	LWI	r9,	r1,	472
	FPMUL	r9,	r9,	r3
	LWI	r10,	r1,	480
	FPMUL	r3,	r10,	r3
	LWI	r10,	r1,	492
	FPMUL	r4,	r10,	r4
	FPADD	r6,	r6,	r7
	FPADD	r7,	r8,	r9
	LWI	r8,	r1,	464
	FPADD	r6,	r6,	r8
	LWI	r8,	r1,	460
	FPADD	r7,	r7,	r8
	FPADD	r3,	r3,	r4
	LWI	r4,	r1,	468
	FPADD	r3,	r4,	r3
	FPMUL	r4,	r7,	r7
	FPMUL	r8,	r6,	r6
	FPADD	r4,	r4,	r8
	FPMUL	r8,	r3,	r3
	FPADD	r4,	r4,	r8
	FPINVSQRT	r4,	r4
	ORI	r8,	r0,	1065353216
	FPDIV	r4,	r8,	r4
	FPDIV	r6,	r6,	r4
	SWI	r6,	r1,	316
	FPDIV	r3,	r3,	r4
	FPDIV	r4,	r7,	r4
	SWI	r3,	r1,	68
	SWI	r6,	r1,	64
	SWI	r4,	r1,	60
	ADDI	r3,	r0,	1
	LWI	r4,	r1,	444
	CMP	r3,	r3,	r4
	bltid	r3,	$0BB0_78
	NOP
	LWI	r3,	r1,	68
	LWI	r4,	r1,	60
	MULI	r5,	r5,	3
	ADD	r6,	r0,	r0
	SWI	r6,	r1,	364
	LWI	r7,	r1,	456
	ADD	r5,	r5,	r7
	SWI	r5,	r1,	416
	LWI	r5,	r1,	512
	BITOR	r3,	r5,	r3
	BITOR	r5,	r5,	r4
	ADDI	r4,	r0,	1343554297
	SWI	r4,	r1,	308
	SWI	r5,	r1,	76
	LWI	r5,	r1,	76
	SWI	r5,	r1,	368
	SWI	r3,	r1,	72
	FPMUL	r5,	r5,	r5
	LWI	r3,	r1,	316
	FPMUL	r3,	r3,	r3
	LWI	r4,	r1,	72
	SWI	r4,	r1,	372
	FPADD	r5,	r5,	r3
	SWI	r5,	r1,	412
	LWI	r5,	r1,	496
	SWI	r5,	r1,	312
	LWI	r5,	r1,	444
	SWI	r5,	r1,	376
	SWI	r6,	r1,	320
	SWI	r6,	r1,	324
	SWI	r6,	r1,	328
	SWI	r6,	r1,	332
	SWI	r6,	r1,	336
	SWI	r6,	r1,	340
	SWI	r6,	r1,	344
	SWI	r6,	r1,	348
	SWI	r6,	r1,	352
	SWI	r6,	r1,	356
	SWI	r6,	r1,	360
$0BB0_4:
	LWI	r5,	r1,	312
	LOAD	r3,	r5,	2
	LOAD	r4,	r5,	1
	LOAD	r6,	r5,	0
	LOAD	r7,	r5,	5
	LOAD	r8,	r5,	4
	LOAD	r9,	r5,	3
	LOAD	r10,	r5,	8
	LOAD	r11,	r5,	7
	LOAD	r12,	r5,	6
	FPRSUB	r20,	r10,	r7
	SWI	r20,	r1,	260
	FPRSUB	r21,	r11,	r8
	FPRSUB	r22,	r12,	r9
	LWI	r23,	r1,	384
	FPRSUB	r11,	r11,	r23
	FPRSUB	r3,	r7,	r3
	LWI	r7,	r1,	420
	FPRSUB	r7,	r10,	r7
	FPRSUB	r4,	r8,	r4
	LWI	r8,	r1,	316
	FPMUL	r10,	r8,	r20
	LWI	r23,	r1,	372
	FPMUL	r24,	r21,	r23
	LWI	r25,	r1,	380
	FPRSUB	r12,	r12,	r25
	FPRSUB	r6,	r9,	r6
	FPRSUB	r9,	r24,	r10
	FPMUL	r10,	r11,	r3
	FPMUL	r24,	r4,	r7
	FPMUL	r25,	r22,	r23
	LWI	r26,	r1,	368
	FPMUL	r20,	r26,	r20
	FPRSUB	r10,	r24,	r10
	SWI	r10,	r1,	256
	FPRSUB	r20,	r20,	r25
	LOAD	r24,	r5,	10
	FPMUL	r25,	r6,	r7
	FPMUL	r27,	r12,	r3
	FPMUL	r28,	r21,	r26
	FPMUL	r29,	r22,	r8
	FPMUL	r30,	r9,	r6
	ORI	r31,	r0,	0
	FPRSUB	r25,	r27,	r25
	FPRSUB	r27,	r29,	r28
	FPMUL	r10,	r10,	r26
	FPMUL	r26,	r4,	r12
	FPMUL	r6,	r6,	r11
	FPMUL	r4,	r20,	r4
	FPADD	r28,	r30,	r31
	ADD	r29,	r0,	r0
	LOAD	r5,	r5,	9
	FPRSUB	r5,	r6,	r26
	FPMUL	r6,	r25,	r8
	FPADD	r8,	r10,	r31
	FPMUL	r3,	r27,	r3
	FPADD	r4,	r4,	r28
	MULI	r10,	r24,	25
	LOAD	r24,	r29,	9
	FPADD	r3,	r3,	r4
	ORI	r4,	r0,	1065353216
	ADD	r10,	r24,	r10
	FPMUL	r23,	r5,	r23
	FPADD	r6,	r6,	r8
	FPDIV	r4,	r4,	r3
	FPADD	r6,	r23,	r6
	LOAD	r8,	r10,	6
	FPMUL	r6,	r6,	r4
	INTCONV	r3,	r3
	LOAD	r8,	r10,	5
	ADDI	r8,	r0,	1
	FPLT	r23,	r6,	r31
	LOAD	r10,	r10,	4
	bneid	r23,	$0BB0_6
	NOP
	ADDI	r8,	r0,	0
$0BB0_6:
	bneid	r8,	$0BB0_31
	NOP
	ADDI	r8,	r0,	31
	ANDI	r8,	r8,	31
	beqid	r8,	$0BB0_9
	ADDI	r10,	r3,	0
$0BB0_8:
	sra	r10,	r10
	ADDI	r8,	r8,	-1
	bneid	r8,	$0BB0_8
	NOP
$0BB0_9:
	FPMUL	r8,	r9,	r12
	FPMUL	r9,	r20,	r11
	FPADD	r8,	r8,	r31
	FPMUL	r7,	r27,	r7
	FPADD	r8,	r9,	r8
	FPADD	r7,	r7,	r8
	FPMUL	r7,	r7,	r4
	ADD	r3,	r3,	r10
	BITXOR	r3,	r3,	r10
	FPADD	r6,	r7,	r6
	ORI	r8,	r0,	1065353216
	FPCONV	r3,	r3
	ADDI	r9,	r0,	1
	FPGT	r6,	r6,	r8
	bneid	r6,	$0BB0_11
	NOP
	ADDI	r9,	r0,	0
$0BB0_11:
	bneid	r9,	$0BB0_31
	NOP
	ORI	r6,	r0,	1065353216
	ADDI	r8,	r0,	1
	FPGT	r6,	r7,	r6
	bneid	r6,	$0BB0_14
	NOP
	ADDI	r8,	r0,	0
$0BB0_14:
	bneid	r8,	$0BB0_31
	NOP
	ORI	r6,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r6,	r7,	r6
	bneid	r6,	$0BB0_17
	NOP
	ADDI	r8,	r0,	0
$0BB0_17:
	bneid	r8,	$0BB0_31
	NOP
	ORI	r6,	r0,	981668463
	ADDI	r7,	r0,	1
	FPLT	r3,	r3,	r6
	bneid	r3,	$0BB0_20
	NOP
	ADDI	r7,	r0,	0
$0BB0_20:
	bneid	r7,	$0BB0_31
	NOP
	LWI	r3,	r1,	256
	FPMUL	r3,	r3,	r22
	ORI	r6,	r0,	0
	FPMUL	r7,	r25,	r21
	FPADD	r3,	r3,	r6
	LWI	r6,	r1,	260
	FPMUL	r5,	r5,	r6
	FPADD	r3,	r7,	r3
	FPADD	r5,	r5,	r3
	FPMUL	r5,	r5,	r4
	ORI	r3,	r0,	981668463
	ADDI	r4,	r0,	1
	FPLT	r3,	r5,	r3
	bneid	r3,	$0BB0_23
	NOP
	ADDI	r4,	r0,	0
$0BB0_23:
	bneid	r4,	$0BB0_31
	NOP
	ORI	r3,	r0,	1343554297
	ADDI	r4,	r0,	1
	FPEQ	r3,	r5,	r3
	bneid	r3,	$0BB0_26
	NOP
	ADDI	r4,	r0,	0
$0BB0_26:
	bneid	r4,	$0BB0_31
	NOP
	LWI	r3,	r1,	308
	SWI	r3,	r1,	80
	LWI	r3,	r1,	80
	FPUN	r4,	r3,	r5
	FPLE	r3,	r3,	r5
	BITOR	r3,	r4,	r3
	bneid	r3,	$0BB0_29
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_29:
	bneid	r6,	$0BB0_31
	NOP
	LWI	r3,	r1,	312
	LOAD	r4,	r3,	2
	LOAD	r6,	r3,	1
	LOAD	r7,	r3,	0
	LOAD	r8,	r3,	5
	LOAD	r9,	r3,	4
	LOAD	r10,	r3,	3
	LOAD	r11,	r3,	8
	LOAD	r12,	r3,	7
	LOAD	r20,	r3,	6
	LOAD	r21,	r3,	10
	LOAD	r3,	r3,	9
	SWI	r3,	r1,	440
	ADD	r3,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r3,	r3,	9
	ADD	r3,	r3,	r21
	LOAD	r21,	r3,	6
	LOAD	r22,	r3,	5
	LOAD	r3,	r3,	4
	SWI	r21,	r1,	124
	SWI	r22,	r1,	128
	SWI	r3,	r1,	132
	SWI	r11,	r1,	112
	SWI	r12,	r1,	116
	SWI	r20,	r1,	120
	SWI	r8,	r1,	100
	SWI	r9,	r1,	104
	SWI	r10,	r1,	108
	SWI	r4,	r1,	88
	SWI	r6,	r1,	92
	SWI	r7,	r1,	96
	SWI	r5,	r1,	84
	ADDI	r5,	r0,	1060320051
	SWI	r5,	r1,	388
	ADDI	r5,	r0,	1050253722
	SWI	r5,	r1,	392
	LWI	r5,	r1,	124
	SWI	r5,	r1,	364
	LWI	r5,	r1,	128
	SWI	r5,	r1,	320
	LWI	r5,	r1,	132
	SWI	r5,	r1,	324
	LWI	r5,	r1,	112
	SWI	r5,	r1,	328
	LWI	r5,	r1,	116
	SWI	r5,	r1,	332
	LWI	r5,	r1,	120
	SWI	r5,	r1,	336
	LWI	r5,	r1,	100
	SWI	r5,	r1,	340
	LWI	r5,	r1,	104
	SWI	r5,	r1,	344
	LWI	r5,	r1,	108
	SWI	r5,	r1,	348
	LWI	r5,	r1,	88
	SWI	r5,	r1,	352
	LWI	r5,	r1,	92
	SWI	r5,	r1,	356
	LWI	r5,	r1,	96
	SWI	r5,	r1,	360
	LWI	r5,	r1,	84
	SWI	r5,	r1,	308
$0BB0_31:
	LWI	r5,	r1,	352
	SWI	r5,	r1,	180
	LWI	r5,	r1,	340
	SWI	r5,	r1,	168
	LWI	r5,	r1,	328
	SWI	r5,	r1,	156
	LWI	r5,	r1,	332
	SWI	r5,	r1,	160
	LWI	r5,	r1,	360
	SWI	r5,	r1,	188
	LWI	r5,	r1,	348
	SWI	r5,	r1,	176
	LWI	r5,	r1,	336
	SWI	r5,	r1,	164
	LWI	r5,	r1,	356
	SWI	r5,	r1,	184
	LWI	r5,	r1,	344
	SWI	r5,	r1,	172
	LWI	r5,	r1,	180
	LWI	r3,	r1,	168
	LWI	r4,	r1,	156
	LWI	r6,	r1,	160
	LWI	r7,	r1,	172
	LWI	r8,	r1,	184
	LWI	r9,	r1,	188
	LWI	r10,	r1,	176
	LWI	r11,	r1,	164
	FPRSUB	r5,	r3,	r5
	FPRSUB	r6,	r6,	r7
	FPRSUB	r9,	r10,	r9
	FPRSUB	r3,	r4,	r3
	FPRSUB	r4,	r11,	r10
	FPRSUB	r7,	r7,	r8
	FPMUL	r8,	r7,	r3
	FPMUL	r10,	r6,	r5
	FPMUL	r5,	r4,	r5
	FPMUL	r3,	r9,	r3
	FPRSUB	r8,	r10,	r8
	FPRSUB	r5,	r3,	r5
	FPMUL	r3,	r6,	r9
	FPMUL	r4,	r4,	r7
	FPRSUB	r3,	r4,	r3
	FPMUL	r4,	r8,	r8
	FPMUL	r6,	r5,	r5
	FPADD	r4,	r4,	r6
	FPMUL	r6,	r3,	r3
	FPADD	r4,	r4,	r6
	LWI	r6,	r1,	372
	FPMUL	r7,	r6,	r6
	LWI	r9,	r1,	412
	FPADD	r7,	r9,	r7
	FPINVSQRT	r4,	r4
	ORI	r9,	r0,	1065353216
	FPINVSQRT	r7,	r7
	FPDIV	r4,	r9,	r4
	FPDIV	r7,	r9,	r7
	FPDIV	r8,	r8,	r4
	LWI	r9,	r1,	368
	FPDIV	r10,	r9,	r7
	FPDIV	r5,	r5,	r4
	LWI	r11,	r1,	316
	FPDIV	r12,	r11,	r7
	LWI	r20,	r1,	308
	SWI	r20,	r1,	192
	FPMUL	r10,	r10,	r8
	ORI	r20,	r0,	0
	LWI	r21,	r1,	192
	FPDIV	r3,	r3,	r4
	FPDIV	r4,	r6,	r7
	FPMUL	r7,	r12,	r5
	FPADD	r10,	r10,	r20
	LWI	r12,	r1,	436
	SWI	r12,	r1,	144
	FPMUL	r6,	r6,	r21
	FPMUL	r11,	r11,	r21
	FPMUL	r9,	r9,	r21
	FPMUL	r4,	r4,	r3
	FPADD	r7,	r7,	r10
	FPADD	r4,	r4,	r7
	LWI	r7,	r1,	324
	SWI	r7,	r1,	152
	LWI	r7,	r1,	320
	SWI	r7,	r1,	148
	LWI	r7,	r1,	392
	SWI	r7,	r1,	140
	LWI	r7,	r1,	388
	SWI	r7,	r1,	136
	LWI	r7,	r1,	144
	SWI	r6,	r1,	196
	SWI	r11,	r1,	200
	SWI	r9,	r1,	204
	LWI	r10,	r1,	152
	SWI	r10,	r1,	396
	LWI	r10,	r1,	148
	SWI	r10,	r1,	400
	LWI	r10,	r1,	140
	LWI	r12,	r1,	136
	SWI	r12,	r1,	404
	FPUN	r12,	r4,	r20
	FPLE	r4,	r4,	r20
	BITOR	r4,	r12,	r4
	bneid	r4,	$0BB0_33
	ADDI	r20,	r0,	1
	ADDI	r20,	r0,	0
$0BB0_33:
	bneid	r20,	$0BB0_35
	NOP
	FPNEG	r3,	r3
	FPNEG	r5,	r5
	FPNEG	r8,	r8
	SWI	r3,	r1,	216
	SWI	r5,	r1,	212
	SWI	r8,	r1,	208
$0BB0_35:
	LWI	r4,	r1,	380
	FPADD	r4,	r9,	r4
	SWI	r4,	r1,	272
	LWI	r9,	r1,	384
	FPADD	r9,	r11,	r9
	SWI	r9,	r1,	276
	FPADD	r6,	r7,	r6
	SWI	r6,	r1,	280
	LWI	r7,	r1,	424
	FPRSUB	r4,	r4,	r7
	LWI	r7,	r1,	428
	FPRSUB	r7,	r9,	r7
	LWI	r9,	r1,	432
	FPRSUB	r6,	r6,	r9
	FPMUL	r9,	r4,	r4
	FPMUL	r11,	r7,	r7
	FPADD	r9,	r9,	r11
	FPMUL	r11,	r6,	r6
	FPADD	r9,	r9,	r11
	ORI	r11,	r0,	1065353216
	FPINVSQRT	r12,	r9
	FPDIV	r11,	r11,	r12
	FPDIV	r4,	r4,	r11
	SWI	r4,	r1,	292
	FPDIV	r7,	r7,	r11
	SWI	r7,	r1,	296
	FPMUL	r4,	r4,	r8
	ORI	r8,	r0,	0
	FPDIV	r6,	r6,	r11
	SWI	r6,	r1,	300
	FPMUL	r5,	r7,	r5
	FPADD	r4,	r4,	r8
	FPMUL	r3,	r6,	r3
	FPADD	r5,	r5,	r4
	FPADD	r5,	r3,	r5
	SWI	r5,	r1,	408
	ORI	r3,	r0,	1053609165
	FPUN	r4,	r5,	r8
	FPLE	r5,	r5,	r8
	BITOR	r5,	r4,	r5
	bneid	r5,	$0BB0_37
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_37:
	FPMUL	r5,	r10,	r3
	beqid	r6,	$0BB0_39
	SWI	r5,	r1,	304
	brid	$0BB0_77
	LWI	r5,	r1,	304
$0BB0_39:
	ADD	r5,	r0,	r0
	SWI	r5,	r1,	256
	FPINVSQRT	r3,	r9
	LOAD	r4,	r5,	28
	ORI	r6,	r0,	1065353216
	FPDIV	r3,	r6,	r3
	SWI	r3,	r1,	288
	LOAD	r5,	r5,	29
	SWI	r5,	r1,	284
	LWI	r5,	r1,	308
	brid	$0BB0_75
	SWI	r5,	r1,	260
$0BB0_40:
	LOAD	r5,	r4,	2
	LOAD	r3,	r4,	1
	LOAD	r6,	r4,	0
	LOAD	r7,	r4,	5
	LOAD	r8,	r4,	4
	LOAD	r9,	r4,	3
	LOAD	r10,	r4,	8
	LOAD	r11,	r4,	7
	LOAD	r12,	r4,	6
	FPRSUB	r20,	r10,	r7
	SWI	r20,	r1,	268
	FPRSUB	r21,	r11,	r8
	FPRSUB	r22,	r12,	r9
	LWI	r23,	r1,	276
	FPRSUB	r11,	r11,	r23
	FPRSUB	r5,	r7,	r5
	LWI	r7,	r1,	280
	FPRSUB	r7,	r10,	r7
	FPRSUB	r3,	r8,	r3
	LWI	r8,	r1,	296
	FPMUL	r10,	r8,	r20
	LWI	r23,	r1,	300
	FPMUL	r24,	r21,	r23
	LWI	r25,	r1,	272
	FPRSUB	r12,	r12,	r25
	FPRSUB	r6,	r9,	r6
	FPRSUB	r9,	r24,	r10
	FPMUL	r10,	r11,	r5
	FPMUL	r24,	r3,	r7
	FPMUL	r25,	r22,	r23
	LWI	r26,	r1,	292
	FPMUL	r20,	r26,	r20
	FPRSUB	r10,	r24,	r10
	SWI	r10,	r1,	264
	FPRSUB	r20,	r20,	r25
	LOAD	r24,	r4,	10
	FPMUL	r25,	r6,	r7
	FPMUL	r27,	r12,	r5
	FPMUL	r28,	r21,	r26
	FPMUL	r29,	r22,	r8
	FPMUL	r30,	r9,	r6
	ORI	r31,	r0,	0
	FPRSUB	r25,	r27,	r25
	FPRSUB	r27,	r29,	r28
	FPMUL	r10,	r10,	r26
	FPMUL	r26,	r3,	r12
	FPMUL	r6,	r6,	r11
	FPMUL	r3,	r20,	r3
	FPADD	r28,	r30,	r31
	ADD	r29,	r0,	r0
	LOAD	r30,	r4,	9
	FPRSUB	r6,	r6,	r26
	FPMUL	r8,	r25,	r8
	FPADD	r10,	r10,	r31
	FPMUL	r5,	r27,	r5
	FPADD	r3,	r3,	r28
	MULI	r24,	r24,	25
	LOAD	r26,	r29,	9
	FPADD	r5,	r5,	r3
	ORI	r3,	r0,	1065353216
	ADD	r24,	r26,	r24
	FPMUL	r23,	r6,	r23
	FPADD	r8,	r8,	r10
	FPDIV	r3,	r3,	r5
	FPADD	r8,	r23,	r8
	LOAD	r10,	r24,	6
	FPMUL	r8,	r8,	r3
	INTCONV	r5,	r5
	LOAD	r10,	r24,	5
	ADDI	r10,	r0,	1
	FPLT	r23,	r8,	r31
	LOAD	r24,	r24,	4
	bneid	r23,	$0BB0_42
	NOP
	ADDI	r10,	r0,	0
$0BB0_42:
	bneid	r10,	$0BB0_67
	NOP
	ADDI	r10,	r0,	31
	ANDI	r10,	r10,	31
	beqid	r10,	$0BB0_45
	ADDI	r23,	r5,	0
$0BB0_44:
	sra	r23,	r23
	ADDI	r10,	r10,	-1
	bneid	r10,	$0BB0_44
	NOP
$0BB0_45:
	FPMUL	r9,	r9,	r12
	FPMUL	r10,	r20,	r11
	FPADD	r9,	r9,	r31
	FPMUL	r7,	r27,	r7
	FPADD	r9,	r10,	r9
	FPADD	r7,	r7,	r9
	FPMUL	r7,	r7,	r3
	ADD	r5,	r5,	r23
	BITXOR	r5,	r5,	r23
	FPADD	r8,	r7,	r8
	ORI	r9,	r0,	1065353216
	FPCONV	r5,	r5
	ADDI	r10,	r0,	1
	FPGT	r8,	r8,	r9
	bneid	r8,	$0BB0_47
	NOP
	ADDI	r10,	r0,	0
$0BB0_47:
	bneid	r10,	$0BB0_67
	NOP
	ORI	r8,	r0,	1065353216
	ADDI	r9,	r0,	1
	FPGT	r8,	r7,	r8
	bneid	r8,	$0BB0_50
	NOP
	ADDI	r9,	r0,	0
$0BB0_50:
	bneid	r9,	$0BB0_67
	NOP
	ORI	r8,	r0,	0
	ADDI	r9,	r0,	1
	FPLT	r7,	r7,	r8
	bneid	r7,	$0BB0_53
	NOP
	ADDI	r9,	r0,	0
$0BB0_53:
	bneid	r9,	$0BB0_67
	NOP
	ORI	r7,	r0,	981668463
	ADDI	r8,	r0,	1
	FPLT	r5,	r5,	r7
	bneid	r5,	$0BB0_56
	NOP
	ADDI	r8,	r0,	0
$0BB0_56:
	bneid	r8,	$0BB0_67
	NOP
	LWI	r5,	r1,	264
	FPMUL	r5,	r5,	r22
	ORI	r7,	r0,	0
	FPMUL	r8,	r25,	r21
	FPADD	r5,	r5,	r7
	LWI	r7,	r1,	268
	FPMUL	r6,	r6,	r7
	FPADD	r5,	r8,	r5
	FPADD	r5,	r6,	r5
	FPMUL	r5,	r5,	r3
	ORI	r3,	r0,	981668463
	ADDI	r6,	r0,	1
	FPLT	r3,	r5,	r3
	bneid	r3,	$0BB0_59
	NOP
	ADDI	r6,	r0,	0
$0BB0_59:
	bneid	r6,	$0BB0_67
	NOP
	ORI	r3,	r0,	1343554297
	ADDI	r6,	r0,	1
	FPEQ	r3,	r5,	r3
	bneid	r3,	$0BB0_62
	NOP
	ADDI	r6,	r0,	0
$0BB0_62:
	bneid	r6,	$0BB0_67
	NOP
	LWI	r3,	r1,	260
	SWI	r3,	r1,	228
	LWI	r3,	r1,	228
	FPUN	r6,	r3,	r5
	FPLE	r3,	r3,	r5
	BITOR	r3,	r6,	r3
	bneid	r3,	$0BB0_65
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_65:
	bneid	r7,	$0BB0_67
	NOP
	LOAD	r3,	r4,	2
	LOAD	r3,	r4,	1
	LOAD	r3,	r4,	0
	LOAD	r3,	r4,	5
	LOAD	r3,	r4,	4
	LOAD	r3,	r4,	3
	LOAD	r3,	r4,	8
	LOAD	r3,	r4,	7
	LOAD	r3,	r4,	6
	LOAD	r3,	r4,	10
	ADD	r6,	r0,	r0
	LOAD	r7,	r4,	9
	MULI	r3,	r3,	25
	LOAD	r6,	r6,	9
	ADD	r3,	r6,	r3
	SWI	r5,	r1,	232
	LOAD	r5,	r3,	6
	LWI	r5,	r1,	232
	SWI	r5,	r1,	260
	LOAD	r5,	r3,	5
	LOAD	r5,	r3,	4
$0BB0_67:
	LWI	r5,	r1,	260
	SWI	r5,	r1,	236
	LWI	r5,	r1,	236
	LWI	r3,	r1,	288
	FPUN	r6,	r5,	r3
	FPGE	r3,	r5,	r3
	BITOR	r3,	r6,	r3
	bneid	r3,	$0BB0_69
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_69:
	bneid	r7,	$0BB0_74
	NOP
	ORI	r3,	r0,	1008981770
	ADDI	r6,	r0,	1
	FPGT	r5,	r5,	r3
	bneid	r5,	$0BB0_72
	NOP
	ADDI	r6,	r0,	0
$0BB0_72:
	beqid	r6,	$0BB0_74
	NOP
	brid	$0BB0_77
	LWI	r5,	r1,	304
$0BB0_74:
	LWI	r5,	r1,	256
	ADDI	r5,	r5,	1
	SWI	r5,	r1,	256
	ADDI	r4,	r4,	11
$0BB0_75:
	LWI	r3,	r1,	256
	LWI	r5,	r1,	284
	CMP	r5,	r5,	r3
	bltid	r5,	$0BB0_40
	NOP
	LWI	r3,	r1,	408
	LWI	r5,	r1,	404
	FPMUL	r5,	r5,	r3
	LWI	r3,	r1,	304
	FPADD	r3,	r5,	r3
	SWI	r3,	r1,	304
	SWI	r5,	r1,	220
	SWI	r3,	r1,	224
	ADD	r5,	r3,	r0
$0BB0_77:
	LWI	r3,	r1,	364
	SWI	r3,	r1,	248
	LWI	r3,	r1,	248
	FPMUL	r5,	r3,	r5
	LWI	r4,	r1,	304
	LWI	r3,	r1,	400
	FPMUL	r3,	r3,	r4
	LWI	r6,	r1,	396
	FPMUL	r4,	r6,	r4
	LWI	r6,	r1,	416
	STORE	r6,	r4,	0
	SWI	r5,	r1,	252
	SWI	r3,	r1,	244
	SWI	r4,	r1,	240
	LWI	r4,	r1,	376
	ADDI	r4,	r4,	-1
	SWI	r4,	r1,	376
	LWI	r7,	r1,	312
	ADDI	r7,	r7,	11
	SWI	r7,	r1,	312
	STORE	r6,	r3,	1
	ADD	r3,	r0,	r0
	STORE	r6,	r5,	2
	CMP	r5,	r3,	r4
	bneid	r5,	$0BB0_4
	NOP
$0BB0_78:
	ATOMIC_INC	r5,	0
	LWI	r3,	r1,	508
	CMP	r3,	r5,	r3
	bgtid	r3,	$0BB0_2
	NOP
$0BB0_79:
	ADD	r3,	r0,	r0
	LWI	r31,	r1,	0
	LWI	r30,	r1,	4
	LWI	r29,	r1,	8
	LWI	r28,	r1,	12
	LWI	r27,	r1,	16
	LWI	r26,	r1,	20
	LWI	r25,	r1,	24
	LWI	r24,	r1,	28
	LWI	r23,	r1,	32
	LWI	r22,	r1,	36
	LWI	r21,	r1,	40
	LWI	r20,	r1,	44
	rtsd	r15,	8
	ADDI	r1,	r1,	520
#	.end	main
$0tmp0:
#	.size	main, ($tmp0)-main


