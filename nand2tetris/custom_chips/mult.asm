// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

   @R2
   M=0          // R2 = 0 (initialize result to 0)

   @R0
   D=M
   @count
   M=D          // count = R0 (loop counter equals R1's multiplier/R0)

(LOOP)
   @count
   D=M
   @END
   D;JEQ        // if count == 0, goto END

   @R1
   D=M
   @R2
   M=D+M        // R2 = R2 + R1

   @count
   M=M-1        // count = count - 1

   @LOOP
   0;JMP        // goto LOOP

(END)
   @END
   0;JMP        // infinite loop to stop program




