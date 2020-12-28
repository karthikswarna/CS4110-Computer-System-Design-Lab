// a = D, b = A
// c = a op b
// D = c

@9      // A = 9
D=A     // D = 9
@8      // A = 8
D=D+A   // D = D + A (c = a + b, a = 9, b = 8, c = 17)

@9      // A = 9
D=A     // D = 9
@8      // A = 8
D=D-A   // D = D - A (c = a - b, a = 9, b = 8, c = 1)

@9      // A = 9
D=A     // D = 9
@8      // A = 8
D=D&A   // D = D & A (c = a & b, a = 9, b = 8, c = 8)

@9      // A = 9
D=A     // D = 9
@8      // A = 8
D=D|A   // D = D | A (c = a | b, a = 9, b = 8, c = 9)

(END)
@END
0;JMP