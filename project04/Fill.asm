// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

@R1
M=0
(LOOP)
@KBD
D=M
@ELSE
D;JEQ
@SCREEN
D=A
@R1
A=M+D
M=-1
@R1
M=M+1
D=M
@8192
D=D-A
@END
D;JLT
@R1
M=M-1
@END
0;JEQ
(ELSE)
@SCREEN
D=A
@R1
A=M+D
M=0
@R1
M=M-1
D=M
@END
D;JGE
@R1
M=M+1
(END)
@LOOP
0;JMP

