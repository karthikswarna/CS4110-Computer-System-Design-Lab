// if (RAM[0] == RAM[1]) RAM[2] = 0
// else if (RAM[0] > RAM[1]) RAM[2] = 1
// else if (RAM[0] < RAM[1]) RAM[2] = 2


//@10         // A = 10           *Value should be changed here*
//D=A         // D = A
//@R0         // A = 0
//M=D         // RAM[0] = 10

//@20         // A = 20           *Value should be changed here*
//D=A         // D = A
//@R1         // A = 1
//M=D         // RAM[1] = 20

// Inputting ended. If input to be given in instructions, uncomment above instructions.

@R0         // A = 0
D=M         // D = RAM[0]
@R1         // A = 1
D=D-M       // D = RAM[0] - RAM[1]
@GREATER
D;JGT       // if (RAM[0] - RAM[1] > 0) goto GREATER
@LESSER
D;JLT       // if (RAM[0] - RAM[1] < 0) goto LESSER
@0          // A = 0
D=A         // D = A
@R2         // A = 2
M=D         // RAM[2] = 0, as a == b
@END
0;JMP

(GREATER)
@1          // A = 1
D=A         // D = A
@R2         // A = 2
M=D         // RAM[2] = 1, as a > b
@END
0;JMP

(LESSER)
@2          // A = 2
D=A         // D = A
@R2         // A = 2
M=D         // RAM[2] = 2, as a < b

(END)
@END
0;JMP