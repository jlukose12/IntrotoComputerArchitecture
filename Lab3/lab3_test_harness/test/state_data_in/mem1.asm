	.ORIG x3000
	XOR R1, R1, R1
	LEA R0, ARRAY
	LDW R0, R0, #0
STLOOP	STW R7, R0, #0
	LSHF R7, R7, #1
	ADD R0, R0, #2
	ADD R1, R1, #1
	ADD R3, R1, #-5
	BRn STLOOP
	LEA R0, ARRAY
	LDW R0, R0, #0
	LDW R1, R0, #0
	LDW R2, R0, #1
	LDW R3, R0, #2
	LDW R4, R0, #3
	LDW R5, R0, #4
	LDW R6, R0, #5	
	HALT
ARRAY	.FILL x1234	
	.END
	