// This file is part of the materials accompanying the book 
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.
@R2
M=0
@R0
D=M
@LeftFactor
M=D
(LOOP)
	@LeftFactor
	D=M
	@END // Get END address
	D;JLE // If what is left from left factor is less than or equal to 0, than go to END
	@R1 // Get R1 Registers value
	D=M // Push if to the ALU's D register
	@R2 // Get R2 (RESULT) 
	M=D+M // Make result equal to whatever in D (R1) plus whatever was in R2, basically (result = factor + result)
	@LeftFactor // Get left factor's value
	M=M-1 // Substract 1 from it
	@LOOP
	0;JMP // Else, go to LOOP
(END)
	@END
	0;JMP
