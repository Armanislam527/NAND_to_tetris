// ==========================================
// PROGRAM: Initialize Array Elements to -1
// ARCHITECTURE: Hack Assembly (Nand to Tetris)
// ==========================================

// --- SECTION 1: SET UP CONSTANTS & VARIABLES ---

// Load the constant 100 into the A register
@100
// Copy the value 100 from A into the D register
D=A
// Point to the memory location allocated for 'arr'
@arr
// Store the value 100 into RAM[arr] (Base address of array)
M=D

// Load the constant 10 into the A register
@10
// Copy the value 10 from A into the D register
D=A
// Point to the memory location allocated for 'n'
@n
// Store the value 10 into RAM[n] (Total elements to loop)
M=D

// Point to the memory location allocated for loop counter 'i'
@i
// Store 0 into RAM[i] (Initialize i = 0)
M=0


// --- SECTION 2: THE LOOP STRUCTURE ---

// Label to mark the start of the loop repetition
(LOOP)

// Point to the loop counter variable 'i'
@i
// Copy the current value of 'i' from memory into the D register
D=M

// Point to the variable 'n' (loop limit)
@n
// Subtract 'n' from 'i' (D = i - n)
D=D-M

// Point to the exit label 'END'
@END
// If D == 0 (which means i == n), jump out of the loop to (END)
D; JEQ


// --- SECTION 3: WRITE TO MEMORY ---

// Point to the array base address variable 'arr'
@arr
// Copy the base address (100) into the D register
D=M

// Point to the loop counter variable 'i'
@i
// Add base address (D) and offset 'i' (M), store result directly into address register A
A=D+M
// Write the constant value -1 into the calculated memory address RAM[arr + i]
M=-1


// --- SECTION 4: INCREMENT & REPEAT ---

// Point to the loop counter variable 'i'
@i
// Add 1 to the current value of 'i' and save it back to memory (i++)
M=M+1

// Point to the loop start label 'LOOP'
@LOOP
// Execute an unconditional jump back to the top of the loop
0; JMP


// --- SECTION 5: SAFE PROGRAM TERMINATION ---

// Label to mark the end of the program
(END)
// Point to this exact same line address
@END
// Loop infinitely on this line to safely freeze the computer CPU
0; JMP

