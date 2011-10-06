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
#	.frame	r1,208,r15
#	.mask	0xfff00000
	ADDI	r1,	r1,	-208
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
	SWI	r4,	r1,	204
	LOAD	r5,	r3,	4
	LOAD	r6,	r3,	7
	SWI	r6,	r1,	136
	LOAD	r6,	r3,	12
	LOAD	r7,	r6,	0
	SWI	r7,	r1,	140
	LOAD	r7,	r6,	1
	SWI	r7,	r1,	144
	LOAD	r6,	r6,	2
	LOAD	r7,	r3,	10
	LOAD	r8,	r7,	0
	SWI	r8,	r1,	120
	LOAD	r8,	r7,	1
	SWI	r8,	r1,	124
	LOAD	r8,	r7,	2
	ADDI	r9,	r7,	9
	LOAD	r10,	r9,	0
	LOAD	r10,	r9,	1
	ADDI	r10,	r7,	12
	LOAD	r9,	r9,	2
	LOAD	r9,	r10,	0
	SWI	r9,	r1,	148
	LOAD	r9,	r10,	1
	SWI	r9,	r1,	152
	LOAD	r9,	r10,	2
	SWI	r9,	r1,	156
	ADDI	r9,	r7,	15
	LOAD	r10,	r9,	0
	SWI	r10,	r1,	160
	LOAD	r10,	r9,	1
	SWI	r10,	r1,	164
	LOAD	r9,	r9,	2
	SWI	r9,	r1,	168
	ADDI	r7,	r7,	18
	LOAD	r9,	r7,	0
	SWI	r9,	r1,	172
	LOAD	r9,	r7,	1
	SWI	r9,	r1,	176
	LOAD	r7,	r7,	2
	SWI	r7,	r1,	180
	LOAD	r7,	r3,	28
	SWI	r7,	r1,	184
	LOAD	r3,	r3,	29
	SWI	r3,	r1,	116
	FPCONV	r3,	r4
	SWI	r3,	r1,	128
	FPCONV	r3,	r5
	SWI	r3,	r1,	132
	ORI	r3,	r0,	-1073741824
	MUL	r4,	r5,	r4
	SWI	r4,	r1,	200
	ATOMIC_INC	r5,	0
	CMP	r4,	r5,	r4
	bleid	r4,	$0BB0_22
	NOP
	LWI	r4,	r1,	128
	FPDIV	r4,	r4,	r3
	SWI	r4,	r1,	188
	LWI	r4,	r1,	132
	FPDIV	r3,	r4,	r3
	SWI	r3,	r1,	192
	SWI	r8,	r1,	56
	LWI	r3,	r1,	124
	SWI	r3,	r1,	52
	LWI	r3,	r1,	120
	SWI	r3,	r1,	48
	ADD	r3,	r0,	r0
	SWI	r3,	r1,	196
	LWI	r3,	r1,	56
$0BB0_2:
	LWI	r7,	r1,	204
	DIV	r8,	r7,	r5
	MUL	r7,	r8,	r7
	RSUB	r7,	r7,	r5
	FPCONV	r8,	r8
	FPCONV	r7,	r7
	LWI	r9,	r1,	192
	FPADD	r8,	r8,	r9
	ORI	r9,	r0,	1056964608
	LWI	r10,	r1,	188
	FPADD	r7,	r7,	r10
	FPADD	r8,	r8,	r9
	FPADD	r7,	r7,	r9
	FPADD	r8,	r8,	r8
	FPADD	r7,	r7,	r7
	LWI	r9,	r1,	132
	FPDIV	r8,	r8,	r9
	LWI	r9,	r1,	128
	FPDIV	r7,	r7,	r9
	LWI	r9,	r1,	172
	FPMUL	r9,	r9,	r8
	LWI	r10,	r1,	160
	FPMUL	r10,	r10,	r7
	LWI	r11,	r1,	176
	FPMUL	r11,	r11,	r8
	LWI	r12,	r1,	164
	FPMUL	r12,	r12,	r7
	FPADD	r9,	r9,	r10
	LWI	r10,	r1,	168
	FPMUL	r7,	r10,	r7
	LWI	r10,	r1,	180
	FPMUL	r8,	r10,	r8
	FPADD	r10,	r11,	r12
	LWI	r11,	r1,	148
	FPADD	r9,	r9,	r11
	LWI	r11,	r1,	152
	FPADD	r10,	r10,	r11
	FPADD	r7,	r7,	r8
	LWI	r8,	r1,	156
	FPADD	r7,	r8,	r7
	FPMUL	r8,	r9,	r9
	FPMUL	r11,	r10,	r10
	FPADD	r8,	r8,	r11
	FPMUL	r11,	r7,	r7
	FPADD	r8,	r8,	r11
	FPINVSQRT	r8,	r8
	ORI	r11,	r0,	1065353216
	FPDIV	r8,	r11,	r8
	FPDIV	r9,	r9,	r8
	FPDIV	r10,	r10,	r8
	SWI	r9,	r1,	60
	SWI	r10,	r1,	64
	ADDI	r11,	r0,	1
	LWI	r12,	r1,	116
	CMP	r11,	r11,	r12
	bltid	r11,	$0BB0_21
	NOP
	MULI	r5,	r5,	3
	ADD	r11,	r0,	r0
	LWI	r12,	r1,	136
	ADD	r5,	r5,	r12
	ORI	r12,	r0,	1343554297
	FPMUL	r20,	r10,	r12
	FPMUL	r12,	r9,	r12
	FPDIV	r7,	r7,	r8
	LWI	r8,	r1,	120
	FPADD	r8,	r12,	r8
	LWI	r21,	r1,	124
	FPADD	r21,	r20,	r21
	LWI	r22,	r1,	140
	FPRSUB	r8,	r8,	r22
	LWI	r22,	r1,	144
	FPRSUB	r21,	r21,	r22
	SWI	r7,	r1,	68
	SWI	r20,	r1,	76
	SWI	r12,	r1,	72
	FPMUL	r7,	r9,	r9
	FPMUL	r12,	r10,	r10
	FPMUL	r20,	r8,	r8
	FPMUL	r22,	r21,	r21
	LWI	r23,	r1,	196
	BITOR	r11,	r23,	r11
	LWI	r23,	r1,	68
	ADD	r24,	r0,	r0
	FPADD	r7,	r7,	r12
	FPADD	r12,	r20,	r22
	BITOR	r11,	r11,	r23
	LWI	r20,	r1,	184
	LWI	r22,	r1,	116
$0BB0_4:
	LOAD	r23,	r20,	2
	LOAD	r23,	r20,	1
	LOAD	r23,	r20,	0
	LOAD	r23,	r20,	5
	LOAD	r23,	r20,	4
	LOAD	r23,	r20,	3
	LOAD	r23,	r20,	8
	LOAD	r23,	r20,	7
	LOAD	r23,	r20,	6
	LOAD	r23,	r20,	10
	ADD	r25,	r0,	r0
	LOAD	r26,	r20,	9
	MULI	r23,	r23,	25
	LOAD	r25,	r25,	9
	ADD	r23,	r25,	r23
	LOAD	r25,	r23,	6
	SWI	r11,	r1,	80
	LOAD	r25,	r23,	5
	LWI	r25,	r1,	80
	FPMUL	r26,	r25,	r25
	ORI	r27,	r0,	0
	LOAD	r23,	r23,	4
	FPADD	r23,	r7,	r26
	FPINVSQRT	r26,	r27
	ORI	r28,	r0,	1065353216
	FPINVSQRT	r23,	r23
	ORI	r29,	r0,	1343554297
	FPDIV	r23,	r28,	r23
	FPDIV	r26,	r28,	r26
	FPMUL	r28,	r25,	r29
	FPDIV	r26,	r27,	r26
	FPDIV	r29,	r9,	r23
	SWI	r28,	r1,	88
	FPDIV	r28,	r10,	r23
	FPMUL	r29,	r29,	r26
	LWI	r30,	r1,	88
	BITOR	r30,	r24,	r30
	FPDIV	r23,	r25,	r23
	FPMUL	r25,	r28,	r26
	FPADD	r28,	r29,	r27
	SWI	r3,	r1,	84
	SWI	r30,	r1,	92
	FPMUL	r23,	r23,	r26
	FPADD	r25,	r25,	r28
	FPADD	r23,	r23,	r25
	LWI	r25,	r1,	84
	LWI	r28,	r1,	92
	FPUN	r29,	r23,	r27
	FPLE	r23,	r23,	r27
	BITOR	r23,	r29,	r23
	bneid	r23,	$0BB0_6
	ADDI	r27,	r0,	1
	ADDI	r27,	r0,	0
$0BB0_6:
	bneid	r27,	$0BB0_8
	NOP
	FPNEG	r26,	r26
	SWI	r26,	r1,	96
$0BB0_8:
	ADD	r23,	r26,	r0
	FPADD	r25,	r25,	r28
	FPRSUB	r25,	r25,	r6
	FPMUL	r27,	r25,	r25
	FPADD	r27,	r12,	r27
	ORI	r28,	r0,	1065353216
	FPINVSQRT	r29,	r27
	FPDIV	r28,	r28,	r29
	FPDIV	r29,	r8,	r28
	FPDIV	r30,	r21,	r28
	FPMUL	r29,	r29,	r26
	ORI	r31,	r0,	0
	FPDIV	r25,	r25,	r28
	FPMUL	r26,	r30,	r26
	FPADD	r28,	r29,	r31
	FPMUL	r23,	r25,	r23
	FPADD	r25,	r26,	r28
	FPADD	r23,	r23,	r25
	ORI	r25,	r0,	1053609165
	FPUN	r26,	r23,	r31
	FPLE	r28,	r23,	r31
	BITOR	r26,	r26,	r28
	bneid	r26,	$0BB0_10
	ADDI	r29,	r0,	1
	ADDI	r29,	r0,	0
$0BB0_10:
	beqid	r29,	$0BB0_12
	BITOR	r4,	r4,	r24
	brid	$0BB0_20
	FPMUL	r23,	r25,	r3
$0BB0_12:
	ADD	r25,	r0,	r0
	FPINVSQRT	r27,	r27
	LOAD	r26,	r25,	28
	ORI	r28,	r0,	1065353216
	LOAD	r29,	r25,	29
	FPDIV	r27,	r28,	r27
	ORI	r28,	r0,	1343554297
	ADDI	r30,	r0,	1
	FPGT	r27,	r27,	r28
	bneid	r27,	$0BB0_14
	NOP
	ADDI	r30,	r0,	0
$0BB0_14:
	bneid	r30,	$0BB0_17
	NOP
$0BB0_15:
	CMP	r27,	r29,	r25
	bgeid	r27,	$0BB0_18
	NOP
	LOAD	r27,	r26,	2
	LOAD	r27,	r26,	1
	LOAD	r27,	r26,	0
	LOAD	r27,	r26,	5
	LOAD	r27,	r26,	4
	LOAD	r27,	r26,	3
	LOAD	r27,	r26,	8
	LOAD	r27,	r26,	7
	LOAD	r27,	r26,	6
	LOAD	r27,	r26,	10
	ADD	r28,	r0,	r0
	LOAD	r30,	r26,	9
	MULI	r27,	r27,	25
	LOAD	r28,	r28,	9
	ADD	r27,	r28,	r27
	LOAD	r28,	r27,	6
	ADDI	r25,	r25,	1
	ADDI	r26,	r26,	11
	LOAD	r28,	r27,	5
	LOAD	r27,	r27,	4
	brid	$0BB0_15
	NOP
$0BB0_17:
	ADD	r27,	r0,	r0
	CMP	r27,	r27,	r29
	bgtid	r27,	$0BB0_19
	NOP
$0BB0_18:
	ORI	r26,	r0,	1053609165
	FPMUL	r27,	r23,	r3
	FPMUL	r23,	r26,	r3
	FPADD	r23,	r27,	r23
	SWI	r27,	r1,	100
	brid	$0BB0_20
	SWI	r23,	r1,	104
$0BB0_19:
	LOAD	r23,	r26,	2
	LOAD	r23,	r26,	1
	LOAD	r23,	r26,	0
	LOAD	r23,	r26,	5
	LOAD	r23,	r26,	4
	LOAD	r23,	r26,	3
	LOAD	r23,	r26,	8
	LOAD	r23,	r26,	7
	LOAD	r23,	r26,	6
	LOAD	r23,	r26,	10
	ADD	r27,	r0,	r0
	LOAD	r25,	r26,	9
	MULI	r23,	r23,	25
	LOAD	r27,	r27,	9
	ADD	r27,	r27,	r23
	LOAD	r23,	r27,	6
	ORI	r23,	r0,	1053609165
	FPMUL	r23,	r23,	r3
	LOAD	r25,	r27,	5
	LOAD	r27,	r27,	4
$0BB0_20:
	ADD	r27,	r23,	r0
	ORI	r25,	r0,	0
	FPMUL	r26,	r27,	r25
	FPMUL	r23,	r23,	r25
	STORE	r5,	r23,	0
	SWI	r26,	r1,	112
	SWI	r23,	r1,	108
	ADDI	r22,	r22,	-1
	ADDI	r20,	r20,	11
	STORE	r5,	r23,	1
	ADD	r23,	r0,	r0
	STORE	r5,	r26,	2
	CMP	r23,	r23,	r22
	bneid	r23,	$0BB0_4
	NOP
$0BB0_21:
	ATOMIC_INC	r5,	0
	LWI	r7,	r1,	200
	CMP	r7,	r5,	r7
	bgtid	r7,	$0BB0_2
	NOP
$0BB0_22:
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
	ADDI	r1,	r1,	208
#	.end	main
$0tmp0:
#	.size	main, ($tmp0)-main


