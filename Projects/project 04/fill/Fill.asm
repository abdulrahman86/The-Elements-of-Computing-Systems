// This file is part of the materials accompanying the book 
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

// Put your code here.
(LOOP)

	@SCREEN
	D=A
	@COURSOR
	M=D
	@24576
	D=A
	@SCREENEND
	M=D

	@KBD
	D=M
	@PAINT
	D;JGT

	@SCREEN
	D=M
	@CLEAR
	D;JLT

	@LOOP
	0;JMP

	(PAINT)

		@COURSOR
		A=M
		M=-1

		@COURSOR
		M=M+1

		@SCREENEND
		D=M
		@COURSOR
		D=D-M
		@LOOP
		D;JEQ

		@PAINT
		0;JMP

	(CLEAR)

		@COURSOR
		A=M
		M=0

		@SCREENEND
		D=M
		@COURSOR
		D=D-M
		@LOOP
		D;JLE

		@COURSOR
		M=M+1

		@CLEAR
		0;JMP		

(END)
