// Program: Signum.asm
// Computes: if R*theta > 0
//R1 = 1
//else
//R1 = 0
@R0
D=M
//DRAM[0]
D;JGT // If R*theta > 0 goto 8
@R1
M = 0 // RAM[1]=0
@10
0;JMP // end of program
@R1 
M = 1
// R * 1 = 1
@10
0;JMP
