@256
D=A
@SP
M=D
@354
D=A
@SP
M=M+1
A=M-1
M=D
@354
D=A
@SP
M=M+1
A=M-1
M=D
@bool0
D=A
@R13
M=D
@ROUTINE_OF_EQ
0;JMP
(bool0)
@998
D=A
@SP
M=M+1
A=M-1
M=D
@1000
D=A
@SP
M=M+1
A=M-1
M=D
@bool1
D=A
@R13
M=D
@ROUTINE_OF_EQ
0;JMP
(bool1)
($PIPPO)
@$PIPPO
0;JMP
(ROUTINE_OF_EQ)
@SP
AM=M-1
D=M
A=A-1
D=M-D
@ROUTINE_OF_EQ:TRUE
D;JEQ
@SP
A=M-1
M=0
@R13
0;JMP
(ROUTINE_OF_EQ:TRUE)
@SP
A=M-1
M=-1
@R13
A=M
0;JMP
(ROUTINE_OF_GT)
@SP
AM=M-1
D=M
A=A-1
D=M-D
@ROUTINE_OF_GT:TRUE
D;JGT
@SP
A=M-1
M=0
@R13
0;JMP
(ROUTINE_OF_GT:TRUE)
@SP
A=M-1
M=-1
@R13
A=M
0;JMP
(ROUTINE_OF_LT)
@SP
AM=M-1
D=M
A=A-1
D=M-D
@ROUTINE_OF_LT:TRUE
D;JLT
@SP
A=M-1
M=0
@R13
0;JMP
(ROUTINE_OF_LT:TRUE)
@SP
A=M-1
M=-1
@R13
A=M
0;JMP
