// if(RAM[0] is even) RAM[0] = 0
// else RAM[0] = 1

//@10         // A = 10           *Value should be changed here*
//D=A         // D = 10
//@R0         // A = 0
//M=D         // RAM[0] = 10

// Inputting ended. If input to be given in instructions, uncomment above instructions.

@R0         // A = 0
D=M         // D = RAM[0]
@1          // A = 1
D=D&A       // D = D & 1
@ODD
D;JGT       // if (D is odd) goto ODD
@R0         // A = 0
M=0         // RAM[0] = 0, as RAM[0] is even
@END
0;JMP

(ODD)
@R0         // A = 0
M=1         // RAM[0] = 1, as RAM[0] is odd

(END)
@END
0;JMP