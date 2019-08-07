// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.
//int i=0;
//int sum=0;
//while(i<R1){
//	sum+=R0;
//	i++;
//}

// Adds 1+...+100.
@R3 // i refers to some mem. location.
M=0 // i=0
@R2 // sum refers to some mem. location.
M=0 // sum=0
(LOOP)
@R3
D=M // D=i
@R1
D=D-M // D=i-R1
@END
D;JGE // If (i-R1)>=0 goto END
@R0
D=M // D=R0
@R2
M=D+M // sum=sum+R0
@R3
M=M+1 // i=i+1
@LOOP
0;JMP // Goto LOOP
(END)
@END
0;JMP // Infinite loop
