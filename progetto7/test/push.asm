@256
D=A
@SP
M=D
@3000
D=A
@SP
M=M+1
A=M-1
M=D
@SP
AM=M-1
D=M
@THAT
M=D
@111
D=A
@SP
M=M+1
A=M-1
M=D
@5
D=A
@THAT
D=D+M
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
@999
D=A
@SP
M=M+1
A=M-1
M=D
@5
D=A
@THAT
D=D+M
D=M
@SP
M=M+1
A=M-1
M=D
(ROUTINE_OF_RETURN)
@5
D=A
@LCL
A=M-D
D=M
@R13
M=D
@SP
D=M
@LCL
D=M-D
@NO_RETURN_VALUE
D;JEQ
@SP
A=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@RESUME_RETURN
0;JMP
(NO_RETURN_VALUE)
@ARG
D=M
@SP
M=D
(RESUME_RETURN)
@LCL
AM=M-1
D=M
@THAT
M=D
@LCL
AM=M-1
D=M
@THIS
M=D
@LCL
AM=M-1
D=M
@ARG
M=D
@LCL
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(ROUTINE_OF_CALL)
@LCL
D=M
@SP
AM=M+1
M=D
@ARG
D=M
@SP
AM=M+1
M=D
@THIS
D=M
@SP
AM=M+1
M=D
@THAT
D=M
@SP
AM=M+1
M=D
@SP
MD=M+1
@LCL
M=D
@5
D=A
@R13
D=D+M
@SP
D=M-D
@ARG
M=D
@R14
A=M
0;JMP
