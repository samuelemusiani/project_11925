@256
D=A
@SP
M=D
@7
D=A
@SP
M=M+1
A=M-1
M=D
@4000
D=A
@SP
M=M+1
A=M-1
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
@THIS
M=D
@SP
AM=M-1
D=M
@THAT
M=D
@10
D=A
@SP
M=M+1
A=M-1
M=D
@4
D=A
@SP
M=M+1
A=M-1
M=D
@:return0
D=A
@SP
A=M
M=D
@2
D=A
@R13
M=D
@function1.pippo
D=A
@R14
M=D
@ROUTINE_OF_CALL
0;JMP
(:return0)
@5
D=A
@THIS
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
($WHILE)
@$WHILE
0;JMP
(function1.pippo)
@1
D=A
@SP
M=M+D
A=M-D
M=0
A=A+1
(function1.pippo$BEGIN)
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
@0
D=A
@SP
M=M+1
A=M-1
M=D
@SP
M=M-1
A=M
D=M
A=A-1
D=M-D
@TRUE0
D;JEQ
@SP
A=M-1
M=0
@END0
0;JMP
(TRUE0)
@SP
A=M-1
M=-1
@END0
0;JMP
(END0)
@SP
M=M-1
A=M
D=M
@function1.pippo$END
D;JNE
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
@SP
M=M-1
A=M
D=M
A=A-1
M=D+M
@0
D=A
@LCL
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
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
@1
D=A
@SP
M=M+1
A=M-1
M=D
@SP
M=M-1
A=M
D=M
A=A-1
M=M-D
@0
D=A
@ARG
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
@function1.pippo$BEGIN
0;JMP
(function1.pippo$END)
@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
@ROUTINE_OF_RETURN
0;JMP
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
