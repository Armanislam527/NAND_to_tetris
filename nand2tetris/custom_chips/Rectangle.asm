// Program: Rectangle.asm
// Draws a filled rectangle at the screen's top left corner.
// The rectangle's width is 16 pixels, and its height is RAM[0].
// Usage: put a non-negative number (rectangle's height) in RAM[0].

    @R0
    D=M
    @n
    M=D        // n = RAM[0] (number of rows to draw)

    @i
    M=0        // i = 0 (row counter)

    @SCREEN
    D=A
    @address
    M=D        // address = 16384 (base address of Hack screen)

(LOOP)
    @i
    D=M
    @n
    D=D-M
    @END
    D;JGE      // If i >= n, jump to END (finished drawing all rows)

    @address
    A=M
    M=-1       // Draw a row of 16 black pixels (in Hack, -1 sets all 16 bits to 1)

    @i
    M=M+1      // i = i + 1 (increment row counter)

    @32
    D=A
    @address
    M=D+M      // address = address + 32 (move down to the next screen row)

    @LOOP
    0;JMP      // Repeat loop

(END)
    @END
    0;JMP      // Infinite loop to terminate the program safely

