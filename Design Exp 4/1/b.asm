// a = RAM[16], b = RAM[17]
// c = a op b
// RAM[18] = a + b, RAM[19] = a - b, RAM[20] = a & b, RAM[21] = a | b

// a = RAM[16] = 9      *Value should be changed here*
//@9
//D=A
//@a
//M=D

// b = RAM[17] = 8      *Value should be changed here*
//@8
//D=A
//@b
//M=D

// Inputting ended. If input to be given in instructions, uncomment above instructions.

@a      // A = 16
D=M     // D = RAM[16]
@b      // A = 17
D=D+M   // D = RAM[16] + RAM[17]
@c      // A = 18
M=D     // RAM[18] = RAM[16] + RAM[17] (c = a + b)

@a      // A = 16
D=M     // D = RAM[16]
@b      // A = 17
D=D-M   // D = RAM[16] - RAM[17]
@d      // A = 19
M=D     // RAM[19] = RAM[16] - RAM[17] (c = a - b)

@a      // A = 16
D=M     // D = RAM[16]
@b      // A = 17
D=D&M   // D = RAM[16] & RAM[17]
@e      // A = 20
M=D     // RAM[20] = RAM[16] & RAM[17] (c = a & b)

@a      // A = 16
D=M     // D = RAM[16]
@b      // A = 17
D=D|M   // D = RAM[16] | RAM[17]
@f      // A = 21
M=D     // RAM[21] = RAM[16] | RAM[17] (c = a | b)

(END)
@END
0;JMP