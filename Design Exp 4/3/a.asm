// Counts the number of "contiguous non-zero elements" in the memory i.e length of array.
// INPUT: Array starting from RAM[16],
// OUTPUT: Length of the array in RAM[0].


@start          // A = 16, start address of array
D=A
@R1             // A = 1, RAM[1] contains address of the current array element
M=D             // RAM[1] = D = 16
@0              // A = 0
D=A             // D = 0, length of the array

(LOOP)
    @R1             // A = 1
    A=M             // A = RAM[1] i.e address of current array element
    D=M             // D = current array element
    @END
    D;JEQ           // If(current_array_element == 0) goto END
    @R0             // A = 0 i.e length location
    M=M+1           // Length = Length + 1
    @R1             // A = 1 i.e current address location
    M=M+1           // Address = Address + 1
    @LOOP
    0;JMP           // Iterate...

(END)
    @END
    0;JMP