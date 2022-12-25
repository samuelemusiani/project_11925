function Sys.init 0
call Memory.init 0
pop temp 0
call Math.init 0
pop temp 0
call Screen.init 0
pop temp 0
call Output.init 0
pop temp 0
call Keyboard.init 0
pop temp 0
call Main.main 0
pop temp 0
call Sys.halt 0
pop temp 0
push constant 0
return
function Memory.init 0
push constant 0
pop static 0
push constant 2048
push static 0
add
push constant 14334
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 2049
push static 0
add
push constant 2050
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 0
return
function Math.init 1
push constant 16
call Array.new 1
pop static 1
push constant 16
call Array.new 1
pop static 0
push constant 0
push static 0
add
push constant 1
pop temp 0
pop pointer 1
push temp 0
pop that 0
label WHILE_EXP0
push local 0
push constant 15
lt
not
if-goto WHILE_END0
push local 0
push constant 1
add
pop local 0
push local 0
push static 0
add
push local 0
push constant 1
sub
push static 0
add
pop pointer 1
push that 0
push local 0
push constant 1
sub
push static 0
add
pop pointer 1
push that 0
add
pop temp 0
pop pointer 1
push temp 0
pop that 0
goto WHILE_EXP0
label WHILE_END0
push constant 0
return
function Screen.init 1
push constant 16384
pop static 1
push constant 0
not
pop static 2
push constant 17
call Array.new 1
pop static 0
push constant 0
push static 0
add
push constant 1
pop temp 0
pop pointer 1
push temp 0
pop that 0
label WHILE_EXP0
push local 0
push constant 16
lt
not
if-goto WHILE_END0
push local 0
push constant 1
add
pop local 0
push local 0
push static 0
add
push local 0
push constant 1
sub
push static 0
add
pop pointer 1
push that 0
push local 0
push constant 1
sub
push static 0
add
pop pointer 1
push that 0
add
pop temp 0
pop pointer 1
push temp 0
pop that 0
goto WHILE_EXP0
label WHILE_END0
push constant 0
return
function Output.init 0
push constant 16384
pop static 4
push constant 0
not
pop static 2
push constant 32
pop static 1
push constant 0
pop static 0
push constant 6
call String.new 1
pop static 3
call Output.initMap 0
pop temp 0
call Output.createShiftedMap 0
pop temp 0
push constant 0
return
function Keyboard.init 0
push constant 0
return
function Main.main 1
call PongGame.newInstance 0
pop temp 0
call PongGame.getInstance 0
pop local 0
push local 0
call PongGame.run 1
pop temp 0
push local 0
call PongGame.dispose 1
pop temp 0
push constant 0
return
function Sys.halt 0
label WHILE_EXP0
push constant 0
not
not
if-goto WHILE_END0
goto WHILE_EXP0
label WHILE_END0
push constant 0
return
function Array.new 0
push argument 0
push constant 0
gt
not
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 2
call Sys.error 1
pop temp 0
label IF_FALSE0
push argument 0
call Memory.alloc 1
return
function String.new 0
push constant 3
call Memory.alloc 1
pop pointer 0
push argument 0
push constant 0
lt
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 14
call Sys.error 1
pop temp 0
label IF_FALSE0
push argument 0
push constant 0
gt
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push argument 0
call Array.new 1
pop this 1
label IF_FALSE1
push argument 0
pop this 0
push constant 0
pop this 2
push pointer 0
return
function Output.initMap 0
push constant 127
call Array.new 1
pop static 5
push constant 0
push constant 63
push constant 63
push constant 63
push constant 63
push constant 63
push constant 63
push constant 63
push constant 63
push constant 63
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 32
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 33
push constant 12
push constant 30
push constant 30
push constant 30
push constant 12
push constant 12
push constant 0
push constant 12
push constant 12
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 34
push constant 54
push constant 54
push constant 20
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 35
push constant 0
push constant 18
push constant 18
push constant 63
push constant 18
push constant 18
push constant 63
push constant 18
push constant 18
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 36
push constant 12
push constant 30
push constant 51
push constant 3
push constant 30
push constant 48
push constant 51
push constant 30
push constant 12
push constant 12
push constant 0
call Output.create 12
pop temp 0
push constant 37
push constant 0
push constant 0
push constant 35
push constant 51
push constant 24
push constant 12
push constant 6
push constant 51
push constant 49
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 38
push constant 12
push constant 30
push constant 30
push constant 12
push constant 54
push constant 27
push constant 27
push constant 27
push constant 54
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 39
push constant 12
push constant 12
push constant 6
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 40
push constant 24
push constant 12
push constant 6
push constant 6
push constant 6
push constant 6
push constant 6
push constant 12
push constant 24
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 41
push constant 6
push constant 12
push constant 24
push constant 24
push constant 24
push constant 24
push constant 24
push constant 12
push constant 6
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 42
push constant 0
push constant 0
push constant 0
push constant 51
push constant 30
push constant 63
push constant 30
push constant 51
push constant 0
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 43
push constant 0
push constant 0
push constant 0
push constant 12
push constant 12
push constant 63
push constant 12
push constant 12
push constant 0
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 44
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 12
push constant 12
push constant 6
push constant 0
call Output.create 12
pop temp 0
push constant 45
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 63
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 46
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 12
push constant 12
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 47
push constant 0
push constant 0
push constant 32
push constant 48
push constant 24
push constant 12
push constant 6
push constant 3
push constant 1
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 48
push constant 12
push constant 30
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 30
push constant 12
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 49
push constant 12
push constant 14
push constant 15
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 63
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 50
push constant 30
push constant 51
push constant 48
push constant 24
push constant 12
push constant 6
push constant 3
push constant 51
push constant 63
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 51
push constant 30
push constant 51
push constant 48
push constant 48
push constant 28
push constant 48
push constant 48
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 52
push constant 16
push constant 24
push constant 28
push constant 26
push constant 25
push constant 63
push constant 24
push constant 24
push constant 60
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 53
push constant 63
push constant 3
push constant 3
push constant 31
push constant 48
push constant 48
push constant 48
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 54
push constant 28
push constant 6
push constant 3
push constant 3
push constant 31
push constant 51
push constant 51
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 55
push constant 63
push constant 49
push constant 48
push constant 48
push constant 24
push constant 12
push constant 12
push constant 12
push constant 12
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 56
push constant 30
push constant 51
push constant 51
push constant 51
push constant 30
push constant 51
push constant 51
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 57
push constant 30
push constant 51
push constant 51
push constant 51
push constant 62
push constant 48
push constant 48
push constant 24
push constant 14
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 58
push constant 0
push constant 0
push constant 12
push constant 12
push constant 0
push constant 0
push constant 12
push constant 12
push constant 0
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 59
push constant 0
push constant 0
push constant 12
push constant 12
push constant 0
push constant 0
push constant 12
push constant 12
push constant 6
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 60
push constant 0
push constant 0
push constant 24
push constant 12
push constant 6
push constant 3
push constant 6
push constant 12
push constant 24
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 61
push constant 0
push constant 0
push constant 0
push constant 63
push constant 0
push constant 0
push constant 63
push constant 0
push constant 0
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 62
push constant 0
push constant 0
push constant 3
push constant 6
push constant 12
push constant 24
push constant 12
push constant 6
push constant 3
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 64
push constant 30
push constant 51
push constant 51
push constant 59
push constant 59
push constant 59
push constant 27
push constant 3
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 63
push constant 30
push constant 51
push constant 51
push constant 24
push constant 12
push constant 12
push constant 0
push constant 12
push constant 12
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 65
push constant 12
push constant 30
push constant 51
push constant 51
push constant 63
push constant 51
push constant 51
push constant 51
push constant 51
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 66
push constant 31
push constant 51
push constant 51
push constant 51
push constant 31
push constant 51
push constant 51
push constant 51
push constant 31
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 67
push constant 28
push constant 54
push constant 35
push constant 3
push constant 3
push constant 3
push constant 35
push constant 54
push constant 28
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 68
push constant 15
push constant 27
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 27
push constant 15
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 69
push constant 63
push constant 51
push constant 35
push constant 11
push constant 15
push constant 11
push constant 35
push constant 51
push constant 63
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 70
push constant 63
push constant 51
push constant 35
push constant 11
push constant 15
push constant 11
push constant 3
push constant 3
push constant 3
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 71
push constant 28
push constant 54
push constant 35
push constant 3
push constant 59
push constant 51
push constant 51
push constant 54
push constant 44
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 72
push constant 51
push constant 51
push constant 51
push constant 51
push constant 63
push constant 51
push constant 51
push constant 51
push constant 51
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 73
push constant 30
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 74
push constant 60
push constant 24
push constant 24
push constant 24
push constant 24
push constant 24
push constant 27
push constant 27
push constant 14
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 75
push constant 51
push constant 51
push constant 51
push constant 27
push constant 15
push constant 27
push constant 51
push constant 51
push constant 51
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 76
push constant 3
push constant 3
push constant 3
push constant 3
push constant 3
push constant 3
push constant 35
push constant 51
push constant 63
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 77
push constant 33
push constant 51
push constant 63
push constant 63
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 78
push constant 51
push constant 51
push constant 55
push constant 55
push constant 63
push constant 59
push constant 59
push constant 51
push constant 51
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 79
push constant 30
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 80
push constant 31
push constant 51
push constant 51
push constant 51
push constant 31
push constant 3
push constant 3
push constant 3
push constant 3
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 81
push constant 30
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 63
push constant 59
push constant 30
push constant 48
push constant 0
call Output.create 12
pop temp 0
push constant 82
push constant 31
push constant 51
push constant 51
push constant 51
push constant 31
push constant 27
push constant 51
push constant 51
push constant 51
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 83
push constant 30
push constant 51
push constant 51
push constant 6
push constant 28
push constant 48
push constant 51
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 84
push constant 63
push constant 63
push constant 45
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 85
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 86
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 30
push constant 30
push constant 12
push constant 12
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 87
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 63
push constant 63
push constant 63
push constant 18
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 88
push constant 51
push constant 51
push constant 30
push constant 30
push constant 12
push constant 30
push constant 30
push constant 51
push constant 51
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 89
push constant 51
push constant 51
push constant 51
push constant 51
push constant 30
push constant 12
push constant 12
push constant 12
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 90
push constant 63
push constant 51
push constant 49
push constant 24
push constant 12
push constant 6
push constant 35
push constant 51
push constant 63
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 91
push constant 30
push constant 6
push constant 6
push constant 6
push constant 6
push constant 6
push constant 6
push constant 6
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 92
push constant 0
push constant 0
push constant 1
push constant 3
push constant 6
push constant 12
push constant 24
push constant 48
push constant 32
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 93
push constant 30
push constant 24
push constant 24
push constant 24
push constant 24
push constant 24
push constant 24
push constant 24
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 94
push constant 8
push constant 28
push constant 54
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 95
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 63
push constant 0
call Output.create 12
pop temp 0
push constant 96
push constant 6
push constant 12
push constant 24
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 97
push constant 0
push constant 0
push constant 0
push constant 14
push constant 24
push constant 30
push constant 27
push constant 27
push constant 54
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 98
push constant 3
push constant 3
push constant 3
push constant 15
push constant 27
push constant 51
push constant 51
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 99
push constant 0
push constant 0
push constant 0
push constant 30
push constant 51
push constant 3
push constant 3
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 100
push constant 48
push constant 48
push constant 48
push constant 60
push constant 54
push constant 51
push constant 51
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 101
push constant 0
push constant 0
push constant 0
push constant 30
push constant 51
push constant 63
push constant 3
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 102
push constant 28
push constant 54
push constant 38
push constant 6
push constant 15
push constant 6
push constant 6
push constant 6
push constant 15
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 103
push constant 0
push constant 0
push constant 30
push constant 51
push constant 51
push constant 51
push constant 62
push constant 48
push constant 51
push constant 30
push constant 0
call Output.create 12
pop temp 0
push constant 104
push constant 3
push constant 3
push constant 3
push constant 27
push constant 55
push constant 51
push constant 51
push constant 51
push constant 51
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 105
push constant 12
push constant 12
push constant 0
push constant 14
push constant 12
push constant 12
push constant 12
push constant 12
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 106
push constant 48
push constant 48
push constant 0
push constant 56
push constant 48
push constant 48
push constant 48
push constant 48
push constant 51
push constant 30
push constant 0
call Output.create 12
pop temp 0
push constant 107
push constant 3
push constant 3
push constant 3
push constant 51
push constant 27
push constant 15
push constant 15
push constant 27
push constant 51
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 108
push constant 14
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 109
push constant 0
push constant 0
push constant 0
push constant 29
push constant 63
push constant 43
push constant 43
push constant 43
push constant 43
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 110
push constant 0
push constant 0
push constant 0
push constant 29
push constant 51
push constant 51
push constant 51
push constant 51
push constant 51
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 111
push constant 0
push constant 0
push constant 0
push constant 30
push constant 51
push constant 51
push constant 51
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 112
push constant 0
push constant 0
push constant 0
push constant 30
push constant 51
push constant 51
push constant 51
push constant 31
push constant 3
push constant 3
push constant 0
call Output.create 12
pop temp 0
push constant 113
push constant 0
push constant 0
push constant 0
push constant 30
push constant 51
push constant 51
push constant 51
push constant 62
push constant 48
push constant 48
push constant 0
call Output.create 12
pop temp 0
push constant 114
push constant 0
push constant 0
push constant 0
push constant 29
push constant 55
push constant 51
push constant 3
push constant 3
push constant 7
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 115
push constant 0
push constant 0
push constant 0
push constant 30
push constant 51
push constant 6
push constant 24
push constant 51
push constant 30
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 116
push constant 4
push constant 6
push constant 6
push constant 15
push constant 6
push constant 6
push constant 6
push constant 54
push constant 28
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 117
push constant 0
push constant 0
push constant 0
push constant 27
push constant 27
push constant 27
push constant 27
push constant 27
push constant 54
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 118
push constant 0
push constant 0
push constant 0
push constant 51
push constant 51
push constant 51
push constant 51
push constant 30
push constant 12
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 119
push constant 0
push constant 0
push constant 0
push constant 51
push constant 51
push constant 51
push constant 63
push constant 63
push constant 18
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 120
push constant 0
push constant 0
push constant 0
push constant 51
push constant 30
push constant 12
push constant 12
push constant 30
push constant 51
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 121
push constant 0
push constant 0
push constant 0
push constant 51
push constant 51
push constant 51
push constant 62
push constant 48
push constant 24
push constant 15
push constant 0
call Output.create 12
pop temp 0
push constant 122
push constant 0
push constant 0
push constant 0
push constant 63
push constant 27
push constant 12
push constant 6
push constant 51
push constant 63
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 123
push constant 56
push constant 12
push constant 12
push constant 12
push constant 7
push constant 12
push constant 12
push constant 12
push constant 56
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 124
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 12
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 125
push constant 7
push constant 12
push constant 12
push constant 12
push constant 56
push constant 12
push constant 12
push constant 12
push constant 7
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 126
push constant 38
push constant 45
push constant 25
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
push constant 0
call Output.create 12
pop temp 0
push constant 0
return
function Output.createShiftedMap 4
push constant 127
call Array.new 1
pop static 6
push constant 0
pop local 2
label WHILE_EXP0
push local 2
push constant 127
lt
not
if-goto WHILE_END0
push local 2
push static 5
add
pop pointer 1
push that 0
pop local 0
push constant 11
call Array.new 1
pop local 1
push local 2
push static 6
add
push local 1
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 0
pop local 3
label WHILE_EXP1
push local 3
push constant 11
lt
not
if-goto WHILE_END1
push local 3
push local 1
add
push local 3
push local 0
add
pop pointer 1
push that 0
push constant 256
call Math.multiply 2
pop temp 0
pop pointer 1
push temp 0
pop that 0
push local 3
push constant 1
add
pop local 3
goto WHILE_EXP1
label WHILE_END1
push local 2
push constant 0
eq
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 32
pop local 2
goto IF_END0
label IF_FALSE0
push local 2
push constant 1
add
pop local 2
label IF_END0
goto WHILE_EXP0
label WHILE_END0
push constant 0
return
function PongGame.newInstance 0
call PongGame.new 0
pop static 0
push constant 0
return
function PongGame.getInstance 0
push static 0
return
function PongGame.run 1
push argument 0
pop pointer 0
label WHILE_EXP0
push this 3
not
not
if-goto WHILE_END0
label WHILE_EXP1
push local 0
push constant 0
eq
push this 3
not
and
not
if-goto WHILE_END1
call Keyboard.keyPressed 0
pop local 0
push this 0
call Bat.move 1
pop temp 0
push pointer 0
call PongGame.moveBall 1
pop temp 0
goto WHILE_EXP1
label WHILE_END1
push local 0
push constant 130
eq
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push this 0
push constant 1
call Bat.setDirection 2
pop temp 0
goto IF_END0
label IF_FALSE0
push local 0
push constant 132
eq
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push this 0
push constant 2
call Bat.setDirection 2
pop temp 0
goto IF_END1
label IF_FALSE1
push local 0
push constant 140
eq
if-goto IF_TRUE2
goto IF_FALSE2
label IF_TRUE2
push constant 0
not
pop this 3
label IF_FALSE2
label IF_END1
label IF_END0
label WHILE_EXP2
push local 0
push constant 0
eq
not
push this 3
not
and
not
if-goto WHILE_END2
call Keyboard.keyPressed 0
pop local 0
push this 0
call Bat.move 1
pop temp 0
push pointer 0
call PongGame.moveBall 1
pop temp 0
goto WHILE_EXP2
label WHILE_END2
goto WHILE_EXP0
label WHILE_END0
push this 3
if-goto IF_TRUE3
goto IF_FALSE3
label IF_TRUE3
push constant 10
push constant 27
call Output.moveCursor 2
pop temp 0
push constant 9
call String.new 1
push constant 71
call String.appendChar 2
push constant 97
call String.appendChar 2
push constant 109
call String.appendChar 2
push constant 101
call String.appendChar 2
push constant 32
call String.appendChar 2
push constant 79
call String.appendChar 2
push constant 118
call String.appendChar 2
push constant 101
call String.appendChar 2
push constant 114
call String.appendChar 2
call Output.printString 1
pop temp 0
label IF_FALSE3
push constant 0
return
function PongGame.dispose 0
push argument 0
pop pointer 0
push this 0
call Bat.dispose 1
pop temp 0
push this 1
call Ball.dispose 1
pop temp 0
push pointer 0
call Memory.deAlloc 1
pop temp 0
push constant 0
return
function Sys.error 0
push constant 3
call String.new 1
push constant 69
call String.appendChar 2
push constant 82
call String.appendChar 2
push constant 82
call String.appendChar 2
call Output.printString 1
pop temp 0
push argument 0
call Output.printInt 1
pop temp 0
call Sys.halt 0
pop temp 0
push constant 0
return
function Memory.alloc 1
push argument 0
push constant 1
lt
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 5
call Sys.error 1
pop temp 0
label IF_FALSE0
push constant 2048
pop local 0
label WHILE_EXP0
push constant 0
push local 0
add
pop pointer 1
push that 0
push argument 0
lt
not
if-goto WHILE_END0
push constant 1
push local 0
add
pop pointer 1
push that 0
pop local 0
goto WHILE_EXP0
label WHILE_END0
push local 0
push argument 0
add
push constant 16379
gt
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push constant 6
call Sys.error 1
pop temp 0
label IF_FALSE1
push constant 0
push local 0
add
pop pointer 1
push that 0
push argument 0
push constant 2
add
gt
if-goto IF_TRUE2
goto IF_FALSE2
label IF_TRUE2
push argument 0
push constant 2
add
push local 0
add
push constant 0
push local 0
add
pop pointer 1
push that 0
push argument 0
sub
push constant 2
sub
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 1
push local 0
add
pop pointer 1
push that 0
push local 0
push constant 2
add
eq
if-goto IF_TRUE3
goto IF_FALSE3
label IF_TRUE3
push argument 0
push constant 3
add
push local 0
add
push local 0
push argument 0
add
push constant 4
add
pop temp 0
pop pointer 1
push temp 0
pop that 0
goto IF_END3
label IF_FALSE3
push argument 0
push constant 3
add
push local 0
add
push constant 1
push local 0
add
pop pointer 1
push that 0
pop temp 0
pop pointer 1
push temp 0
pop that 0
label IF_END3
push constant 1
push local 0
add
push local 0
push argument 0
add
push constant 2
add
pop temp 0
pop pointer 1
push temp 0
pop that 0
label IF_FALSE2
push constant 0
push local 0
add
push constant 0
pop temp 0
pop pointer 1
push temp 0
pop that 0
push local 0
push constant 2
add
return
function Output.create 1
push constant 11
call Array.new 1
pop local 0
push argument 0
push static 5
add
push local 0
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 0
push local 0
add
push argument 1
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 1
push local 0
add
push argument 2
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 2
push local 0
add
push argument 3
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 3
push local 0
add
push argument 4
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 4
push local 0
add
push argument 5
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 5
push local 0
add
push argument 6
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 6
push local 0
add
push argument 7
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 7
push local 0
add
push argument 8
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 8
push local 0
add
push argument 9
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 9
push local 0
add
push argument 10
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 10
push local 0
add
push argument 11
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 0
return
function Math.multiply 5
push argument 0
push constant 0
lt
push argument 1
push constant 0
gt
and
push argument 0
push constant 0
gt
push argument 1
push constant 0
lt
and
or
pop local 4
push argument 0
call Math.abs 1
pop argument 0
push argument 1
call Math.abs 1
pop argument 1
push argument 0
push argument 1
lt
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push argument 0
pop local 1
push argument 1
pop argument 0
push local 1
pop argument 1
label IF_FALSE0
label WHILE_EXP0
push local 2
push constant 1
sub
push argument 1
push constant 1
sub
lt
not
if-goto WHILE_END0
push local 3
push static 0
add
pop pointer 1
push that 0
push argument 1
and
push constant 0
eq
not
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push local 0
push argument 0
add
pop local 0
push local 2
push local 3
push static 0
add
pop pointer 1
push that 0
add
pop local 2
label IF_FALSE1
push argument 0
push argument 0
add
pop argument 0
push local 3
push constant 1
add
pop local 3
goto WHILE_EXP0
label WHILE_END0
push local 4
if-goto IF_TRUE2
goto IF_FALSE2
label IF_TRUE2
push local 0
neg
pop local 0
label IF_FALSE2
push local 0
return
function PongGame.new 0
push constant 7
call Memory.alloc 1
pop pointer 0
call Screen.clearScreen 0
pop temp 0
push constant 50
pop this 6
push constant 230
push constant 229
push this 6
push constant 7
call Bat.new 4
pop this 0
push constant 253
push constant 222
push constant 0
push constant 511
push constant 0
push constant 229
call Ball.new 6
pop this 1
push this 1
push constant 400
push constant 0
call Ball.setDestination 3
pop temp 0
push constant 0
push constant 238
push constant 511
push constant 240
call Screen.drawRectangle 4
pop temp 0
push constant 22
push constant 0
call Output.moveCursor 2
pop temp 0
push constant 8
call String.new 1
push constant 83
call String.appendChar 2
push constant 99
call String.appendChar 2
push constant 111
call String.appendChar 2
push constant 114
call String.appendChar 2
push constant 101
call String.appendChar 2
push constant 58
call String.appendChar 2
push constant 32
call String.appendChar 2
push constant 48
call String.appendChar 2
call Output.printString 1
pop temp 0
push constant 0
pop this 3
push constant 0
pop this 4
push constant 0
pop this 2
push constant 0
pop this 5
push pointer 0
return
function Keyboard.keyPressed 0
push constant 24576
call Memory.peek 1
return
function Bat.move 0
push argument 0
pop pointer 0
push this 4
push constant 1
eq
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push this 0
push constant 4
sub
pop this 0
push this 0
push constant 0
lt
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push constant 0
pop this 0
label IF_FALSE1
push constant 0
call Screen.setColor 1
pop temp 0
push this 0
push this 2
add
push constant 1
add
push this 1
push this 0
push this 2
add
push constant 4
add
push this 1
push this 3
add
call Screen.drawRectangle 4
pop temp 0
push constant 0
not
call Screen.setColor 1
pop temp 0
push this 0
push this 1
push this 0
push constant 3
add
push this 1
push this 3
add
call Screen.drawRectangle 4
pop temp 0
goto IF_END0
label IF_FALSE0
push this 0
push constant 4
add
pop this 0
push this 0
push this 2
add
push constant 511
gt
if-goto IF_TRUE2
goto IF_FALSE2
label IF_TRUE2
push constant 511
push this 2
sub
pop this 0
label IF_FALSE2
push constant 0
call Screen.setColor 1
pop temp 0
push this 0
push constant 4
sub
push this 1
push this 0
push constant 1
sub
push this 1
push this 3
add
call Screen.drawRectangle 4
pop temp 0
push constant 0
not
call Screen.setColor 1
pop temp 0
push this 0
push this 2
add
push constant 3
sub
push this 1
push this 0
push this 2
add
push this 1
push this 3
add
call Screen.drawRectangle 4
pop temp 0
label IF_END0
push constant 0
return
function PongGame.moveBall 5
push argument 0
pop pointer 0
push this 1
call Ball.move 1
pop this 2
push this 2
push constant 0
gt
push this 2
push this 5
eq
not
and
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push this 2
pop this 5
push constant 0
pop local 0
push this 0
call Bat.getLeft 1
pop local 1
push this 0
call Bat.getRight 1
pop local 2
push this 1
call Ball.getLeft 1
pop local 3
push this 1
call Ball.getRight 1
pop local 4
push this 2
push constant 4
eq
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push local 1
push local 4
gt
push local 2
push local 3
lt
or
pop this 3
push this 3
not
if-goto IF_TRUE2
goto IF_FALSE2
label IF_TRUE2
push local 4
push local 1
push constant 10
add
lt
if-goto IF_TRUE3
goto IF_FALSE3
label IF_TRUE3
push constant 1
neg
pop local 0
goto IF_END3
label IF_FALSE3
push local 3
push local 2
push constant 10
sub
gt
if-goto IF_TRUE4
goto IF_FALSE4
label IF_TRUE4
push constant 1
pop local 0
label IF_FALSE4
label IF_END3
push this 6
push constant 2
sub
pop this 6
push this 0
push this 6
call Bat.setWidth 2
pop temp 0
push this 4
push constant 1
add
pop this 4
push constant 22
push constant 7
call Output.moveCursor 2
pop temp 0
push this 4
call Output.printInt 1
pop temp 0
label IF_FALSE2
label IF_FALSE1
push this 1
push local 0
call Ball.bounce 2
pop temp 0
label IF_FALSE0
push constant 0
return
function Bat.setDirection 0
push argument 0
pop pointer 0
push argument 1
pop this 4
push constant 0
return
function Output.moveCursor 0
push argument 0
push constant 0
lt
push argument 0
push constant 22
gt
or
push argument 1
push constant 0
lt
or
push argument 1
push constant 63
gt
or
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 20
call Sys.error 1
pop temp 0
label IF_FALSE0
push argument 1
push constant 2
call Math.divide 2
pop static 0
push constant 32
push argument 0
push constant 352
call Math.multiply 2
add
push static 0
add
pop static 1
push argument 1
push static 0
push constant 2
call Math.multiply 2
eq
pop static 2
push constant 32
call Output.drawChar 1
pop temp 0
push constant 0
return
function String.appendChar 0
push argument 0
pop pointer 0
push this 2
push this 0
eq
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 17
call Sys.error 1
pop temp 0
label IF_FALSE0
push this 2
push this 1
add
push argument 1
pop temp 0
pop pointer 1
push temp 0
pop that 0
push this 2
push constant 1
add
pop this 2
push pointer 0
return
function Output.printString 2
push argument 0
call String.length 1
pop local 1
label WHILE_EXP0
push local 0
push local 1
lt
not
if-goto WHILE_END0
push argument 0
push local 0
call String.charAt 2
call Output.printChar 1
pop temp 0
push local 0
push constant 1
add
pop local 0
goto WHILE_EXP0
label WHILE_END0
push constant 0
return
function Bat.dispose 0
push argument 0
pop pointer 0
push pointer 0
call Memory.deAlloc 1
pop temp 0
push constant 0
return
function Ball.dispose 0
push argument 0
pop pointer 0
push pointer 0
call Memory.deAlloc 1
pop temp 0
push constant 0
return
function Memory.deAlloc 2
push argument 0
push constant 2
sub
pop local 0
push constant 1
push local 0
add
pop pointer 1
push that 0
pop local 1
push constant 0
push local 1
add
pop pointer 1
push that 0
push constant 0
eq
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 0
push local 0
add
push constant 1
push local 0
add
pop pointer 1
push that 0
push local 0
sub
push constant 2
sub
pop temp 0
pop pointer 1
push temp 0
pop that 0
goto IF_END0
label IF_FALSE0
push constant 0
push local 0
add
push constant 1
push local 0
add
pop pointer 1
push that 0
push local 0
sub
push constant 0
push local 1
add
pop pointer 1
push that 0
add
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 1
push local 1
add
pop pointer 1
push that 0
push local 1
push constant 2
add
eq
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push constant 1
push local 0
add
push local 0
push constant 2
add
pop temp 0
pop pointer 1
push temp 0
pop that 0
goto IF_END1
label IF_FALSE1
push constant 1
push local 0
add
push constant 1
push local 1
add
pop pointer 1
push that 0
pop temp 0
pop pointer 1
push temp 0
pop that 0
label IF_END1
label IF_END0
push constant 0
return
function Output.printInt 0
push static 3
push argument 0
call String.setInt 2
pop temp 0
push static 3
call Output.printString 1
pop temp 0
push constant 0
return
function Math.abs 0
push argument 0
push constant 0
lt
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push argument 0
neg
pop argument 0
label IF_FALSE0
push argument 0
return
function Screen.clearScreen 1
label WHILE_EXP0
push local 0
push constant 8192
lt
not
if-goto WHILE_END0
push local 0
push static 1
add
push constant 0
pop temp 0
pop pointer 1
push temp 0
pop that 0
push local 0
push constant 1
add
pop local 0
goto WHILE_EXP0
label WHILE_END0
push constant 0
return
function Bat.new 0
push constant 5
call Memory.alloc 1
pop pointer 0
push argument 0
pop this 0
push argument 1
pop this 1
push argument 2
pop this 2
push argument 3
pop this 3
push constant 2
pop this 4
push pointer 0
call Bat.show 1
pop temp 0
push pointer 0
return
function Ball.new 0
push constant 15
call Memory.alloc 1
pop pointer 0
push argument 0
pop this 0
push argument 1
pop this 1
push argument 2
pop this 10
push argument 3
push constant 6
sub
pop this 11
push argument 4
pop this 12
push argument 5
push constant 6
sub
pop this 13
push constant 0
pop this 14
push pointer 0
call Ball.show 1
pop temp 0
push pointer 0
return
function Ball.setDestination 3
push argument 0
pop pointer 0
push argument 1
push this 0
sub
pop this 2
push argument 2
push this 1
sub
pop this 3
push this 2
call Math.abs 1
pop local 0
push this 3
call Math.abs 1
pop local 1
push local 0
push local 1
lt
pop this 7
push this 7
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push local 0
pop local 2
push local 1
pop local 0
push local 2
pop local 1
push this 1
push argument 2
lt
pop this 8
push this 0
push argument 1
lt
pop this 9
goto IF_END0
label IF_FALSE0
push this 0
push argument 1
lt
pop this 8
push this 1
push argument 2
lt
pop this 9
label IF_END0
push constant 2
push local 1
call Math.multiply 2
push local 0
sub
pop this 4
push constant 2
push local 1
call Math.multiply 2
pop this 5
push constant 2
push local 1
push local 0
sub
call Math.multiply 2
pop this 6
push constant 0
return
function Screen.drawRectangle 9
push argument 0
push argument 2
gt
push argument 1
push argument 3
gt
or
push argument 0
push constant 0
lt
or
push argument 2
push constant 511
gt
or
push argument 1
push constant 0
lt
or
push argument 3
push constant 255
gt
or
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 9
call Sys.error 1
pop temp 0
label IF_FALSE0
push argument 0
push constant 16
call Math.divide 2
pop local 3
push argument 0
push local 3
push constant 16
call Math.multiply 2
sub
pop local 7
push argument 2
push constant 16
call Math.divide 2
pop local 4
push argument 2
push local 4
push constant 16
call Math.multiply 2
sub
pop local 8
push local 7
push static 0
add
pop pointer 1
push that 0
push constant 1
sub
not
pop local 6
push local 8
push constant 1
add
push static 0
add
pop pointer 1
push that 0
push constant 1
sub
pop local 5
push argument 1
push constant 32
call Math.multiply 2
push local 3
add
pop local 0
push local 4
push local 3
sub
pop local 2
label WHILE_EXP0
push argument 1
push argument 3
gt
not
not
if-goto WHILE_END0
push local 0
push local 2
add
pop local 1
push local 2
push constant 0
eq
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push local 0
push local 5
push local 6
and
call Screen.updateLocation 2
pop temp 0
goto IF_END1
label IF_FALSE1
push local 0
push local 6
call Screen.updateLocation 2
pop temp 0
push local 0
push constant 1
add
pop local 0
label WHILE_EXP1
push local 0
push local 1
lt
not
if-goto WHILE_END1
push local 0
push constant 1
neg
call Screen.updateLocation 2
pop temp 0
push local 0
push constant 1
add
pop local 0
goto WHILE_EXP1
label WHILE_END1
push local 1
push local 5
call Screen.updateLocation 2
pop temp 0
label IF_END1
push argument 1
push constant 1
add
pop argument 1
push local 1
push constant 32
add
push local 2
sub
pop local 0
goto WHILE_EXP0
label WHILE_END0
push constant 0
return
function Memory.peek 0
push argument 0
push static 0
add
pop pointer 1
push that 0
return
function Screen.setColor 0
push argument 0
pop static 2
push constant 0
return
function Ball.move 0
push argument 0
pop pointer 0
push pointer 0
call Ball.hide 1
pop temp 0
push this 4
push constant 0
lt
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push this 4
push this 5
add
pop this 4
goto IF_END0
label IF_FALSE0
push this 4
push this 6
add
pop this 4
push this 9
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push this 7
if-goto IF_TRUE2
goto IF_FALSE2
label IF_TRUE2
push this 0
push constant 4
add
pop this 0
goto IF_END2
label IF_FALSE2
push this 1
push constant 4
add
pop this 1
label IF_END2
goto IF_END1
label IF_FALSE1
push this 7
if-goto IF_TRUE3
goto IF_FALSE3
label IF_TRUE3
push this 0
push constant 4
sub
pop this 0
goto IF_END3
label IF_FALSE3
push this 1
push constant 4
sub
pop this 1
label IF_END3
label IF_END1
label IF_END0
push this 8
if-goto IF_TRUE4
goto IF_FALSE4
label IF_TRUE4
push this 7
if-goto IF_TRUE5
goto IF_FALSE5
label IF_TRUE5
push this 1
push constant 4
add
pop this 1
goto IF_END5
label IF_FALSE5
push this 0
push constant 4
add
pop this 0
label IF_END5
goto IF_END4
label IF_FALSE4
push this 7
if-goto IF_TRUE6
goto IF_FALSE6
label IF_TRUE6
push this 1
push constant 4
sub
pop this 1
goto IF_END6
label IF_FALSE6
push this 0
push constant 4
sub
pop this 0
label IF_END6
label IF_END4
push this 0
push this 10
gt
not
if-goto IF_TRUE7
goto IF_FALSE7
label IF_TRUE7
push constant 1
pop this 14
push this 10
pop this 0
label IF_FALSE7
push this 0
push this 11
lt
not
if-goto IF_TRUE8
goto IF_FALSE8
label IF_TRUE8
push constant 2
pop this 14
push this 11
pop this 0
label IF_FALSE8
push this 1
push this 12
gt
not
if-goto IF_TRUE9
goto IF_FALSE9
label IF_TRUE9
push constant 3
pop this 14
push this 12
pop this 1
label IF_FALSE9
push this 1
push this 13
lt
not
if-goto IF_TRUE10
goto IF_FALSE10
label IF_TRUE10
push constant 4
pop this 14
push this 13
pop this 1
label IF_FALSE10
push pointer 0
call Ball.show 1
pop temp 0
push this 14
return
function Bat.getLeft 0
push argument 0
pop pointer 0
push this 0
return
function Bat.getRight 0
push argument 0
pop pointer 0
push this 0
push this 2
add
return
function Ball.getLeft 0
push argument 0
pop pointer 0
push this 0
return
function Ball.getRight 0
push argument 0
pop pointer 0
push this 0
push constant 5
add
return
function Bat.setWidth 0
push argument 0
pop pointer 0
push pointer 0
call Bat.hide 1
pop temp 0
push argument 1
pop this 2
push pointer 0
call Bat.show 1
pop temp 0
push constant 0
return
function Ball.bounce 5
push argument 0
pop pointer 0
push this 2
push constant 10
call Math.divide 2
pop local 2
push this 3
push constant 10
call Math.divide 2
pop local 3
push argument 1
push constant 0
eq
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 10
pop local 4
goto IF_END0
label IF_FALSE0
push this 2
push constant 0
lt
not
push argument 1
push constant 1
eq
and
push this 2
push constant 0
lt
push argument 1
push constant 1
neg
eq
and
or
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push constant 20
pop local 4
goto IF_END1
label IF_FALSE1
push constant 5
pop local 4
label IF_END1
label IF_END0
push this 14
push constant 1
eq
if-goto IF_TRUE2
goto IF_FALSE2
label IF_TRUE2
push constant 506
pop local 0
push local 3
push constant 50
neg
call Math.multiply 2
push local 2
call Math.divide 2
pop local 1
push this 1
push local 1
push local 4
call Math.multiply 2
add
pop local 1
goto IF_END2
label IF_FALSE2
push this 14
push constant 2
eq
if-goto IF_TRUE3
goto IF_FALSE3
label IF_TRUE3
push constant 0
pop local 0
push local 3
push constant 50
call Math.multiply 2
push local 2
call Math.divide 2
pop local 1
push this 1
push local 1
push local 4
call Math.multiply 2
add
pop local 1
goto IF_END3
label IF_FALSE3
push this 14
push constant 3
eq
if-goto IF_TRUE4
goto IF_FALSE4
label IF_TRUE4
push constant 250
pop local 1
push local 2
push constant 25
neg
call Math.multiply 2
push local 3
call Math.divide 2
pop local 0
push this 0
push local 0
push local 4
call Math.multiply 2
add
pop local 0
goto IF_END4
label IF_FALSE4
push constant 0
pop local 1
push local 2
push constant 25
call Math.multiply 2
push local 3
call Math.divide 2
pop local 0
push this 0
push local 0
push local 4
call Math.multiply 2
add
pop local 0
label IF_END4
label IF_END3
label IF_END2
push pointer 0
push local 0
push local 1
call Ball.setDestination 3
pop temp 0
push constant 0
return
function Math.divide 4
push argument 1
push constant 0
eq
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 3
call Sys.error 1
pop temp 0
label IF_FALSE0
push argument 0
push constant 0
lt
push argument 1
push constant 0
gt
and
push argument 0
push constant 0
gt
push argument 1
push constant 0
lt
and
or
pop local 2
push constant 0
push static 1
add
push argument 1
call Math.abs 1
pop temp 0
pop pointer 1
push temp 0
pop that 0
push argument 0
call Math.abs 1
pop argument 0
label WHILE_EXP0
push local 0
push constant 15
lt
push local 3
not
and
not
if-goto WHILE_END0
push constant 32767
push local 0
push static 1
add
pop pointer 1
push that 0
push constant 1
sub
sub
push local 0
push static 1
add
pop pointer 1
push that 0
push constant 1
sub
lt
pop local 3
push local 3
not
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push local 0
push constant 1
add
push static 1
add
push local 0
push static 1
add
pop pointer 1
push that 0
push local 0
push static 1
add
pop pointer 1
push that 0
add
pop temp 0
pop pointer 1
push temp 0
pop that 0
push local 0
push constant 1
add
push static 1
add
pop pointer 1
push that 0
push constant 1
sub
push argument 0
push constant 1
sub
gt
pop local 3
push local 3
not
if-goto IF_TRUE2
goto IF_FALSE2
label IF_TRUE2
push local 0
push constant 1
add
pop local 0
label IF_FALSE2
label IF_FALSE1
goto WHILE_EXP0
label WHILE_END0
label WHILE_EXP1
push local 0
push constant 1
neg
gt
not
if-goto WHILE_END1
push local 0
push static 1
add
pop pointer 1
push that 0
push constant 1
sub
push argument 0
push constant 1
sub
gt
not
if-goto IF_TRUE3
goto IF_FALSE3
label IF_TRUE3
push local 1
push local 0
push static 0
add
pop pointer 1
push that 0
add
pop local 1
push argument 0
push local 0
push static 1
add
pop pointer 1
push that 0
sub
pop argument 0
label IF_FALSE3
push local 0
push constant 1
sub
pop local 0
goto WHILE_EXP1
label WHILE_END1
push local 2
if-goto IF_TRUE4
goto IF_FALSE4
label IF_TRUE4
push local 1
neg
pop local 1
label IF_FALSE4
push local 1
return
function Output.drawChar 4
push argument 0
call Output.getMap 1
pop local 2
push static 1
pop local 0
label WHILE_EXP0
push local 1
push constant 11
lt
not
if-goto WHILE_END0
push static 2
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push local 0
push static 4
add
pop pointer 1
push that 0
push constant 256
neg
and
pop local 3
goto IF_END0
label IF_FALSE0
push local 0
push static 4
add
pop pointer 1
push that 0
push constant 255
and
pop local 3
label IF_END0
push local 0
push static 4
add
push local 1
push local 2
add
pop pointer 1
push that 0
push local 3
or
pop temp 0
pop pointer 1
push temp 0
pop that 0
push local 0
push constant 32
add
pop local 0
push local 1
push constant 1
add
pop local 1
goto WHILE_EXP0
label WHILE_END0
push constant 0
return
function String.length 0
push argument 0
pop pointer 0
push this 2
return
function String.charAt 0
push argument 0
pop pointer 0
push argument 1
push constant 0
lt
push argument 1
push this 2
gt
or
push argument 1
push this 2
eq
or
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 15
call Sys.error 1
pop temp 0
label IF_FALSE0
push argument 1
push this 1
add
pop pointer 1
push that 0
return
function Output.printChar 0
push argument 0
call String.newLine 0
eq
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
call Output.println 0
pop temp 0
goto IF_END0
label IF_FALSE0
push argument 0
call String.backSpace 0
eq
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
call Output.backSpace 0
pop temp 0
goto IF_END1
label IF_FALSE1
push argument 0
call Output.drawChar 1
pop temp 0
push static 2
not
if-goto IF_TRUE2
goto IF_FALSE2
label IF_TRUE2
push static 0
push constant 1
add
pop static 0
push static 1
push constant 1
add
pop static 1
label IF_FALSE2
push static 0
push constant 32
eq
if-goto IF_TRUE3
goto IF_FALSE3
label IF_TRUE3
call Output.println 0
pop temp 0
goto IF_END3
label IF_FALSE3
push static 2
not
pop static 2
label IF_END3
label IF_END1
label IF_END0
push constant 0
return
function String.setInt 4
push argument 0
pop pointer 0
push this 0
push constant 0
eq
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 19
call Sys.error 1
pop temp 0
label IF_FALSE0
push constant 6
call Array.new 1
pop local 2
push argument 1
push constant 0
lt
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push constant 0
not
pop local 3
push argument 1
neg
pop argument 1
label IF_FALSE1
push argument 1
pop local 1
label WHILE_EXP0
push local 1
push constant 0
gt
not
if-goto WHILE_END0
push argument 1
push constant 10
call Math.divide 2
pop local 1
push local 0
push local 2
add
push constant 48
push argument 1
push local 1
push constant 10
call Math.multiply 2
sub
add
pop temp 0
pop pointer 1
push temp 0
pop that 0
push local 0
push constant 1
add
pop local 0
push local 1
pop argument 1
goto WHILE_EXP0
label WHILE_END0
push local 3
if-goto IF_TRUE2
goto IF_FALSE2
label IF_TRUE2
push local 0
push local 2
add
push constant 45
pop temp 0
pop pointer 1
push temp 0
pop that 0
push local 0
push constant 1
add
pop local 0
label IF_FALSE2
push this 0
push local 0
lt
if-goto IF_TRUE3
goto IF_FALSE3
label IF_TRUE3
push constant 19
call Sys.error 1
pop temp 0
label IF_FALSE3
push local 0
push constant 0
eq
if-goto IF_TRUE4
goto IF_FALSE4
label IF_TRUE4
push constant 0
push this 1
add
push constant 48
pop temp 0
pop pointer 1
push temp 0
pop that 0
push constant 1
pop this 2
goto IF_END4
label IF_FALSE4
push constant 0
pop this 2
label WHILE_EXP1
push this 2
push local 0
lt
not
if-goto WHILE_END1
push this 2
push this 1
add
push local 0
push this 2
push constant 1
add
sub
push local 2
add
pop pointer 1
push that 0
pop temp 0
pop pointer 1
push temp 0
pop that 0
push this 2
push constant 1
add
pop this 2
goto WHILE_EXP1
label WHILE_END1
label IF_END4
push local 2
call Array.dispose 1
pop temp 0
push constant 0
return
function Bat.show 0
push argument 0
pop pointer 0
push constant 0
not
call Screen.setColor 1
pop temp 0
push pointer 0
call Bat.draw 1
pop temp 0
push constant 0
return
function Ball.show 0
push argument 0
pop pointer 0
push constant 0
not
call Screen.setColor 1
pop temp 0
push pointer 0
call Ball.draw 1
pop temp 0
push constant 0
return
function Screen.updateLocation 0
push static 2
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push argument 0
push static 1
add
push argument 0
push static 1
add
pop pointer 1
push that 0
push argument 1
or
pop temp 0
pop pointer 1
push temp 0
pop that 0
goto IF_END0
label IF_FALSE0
push argument 0
push static 1
add
push argument 0
push static 1
add
pop pointer 1
push that 0
push argument 1
not
and
pop temp 0
pop pointer 1
push temp 0
pop that 0
label IF_END0
push constant 0
return
function Ball.hide 0
push argument 0
pop pointer 0
push constant 0
call Screen.setColor 1
pop temp 0
push pointer 0
call Ball.draw 1
pop temp 0
push constant 0
return
function Bat.hide 0
push argument 0
pop pointer 0
push constant 0
call Screen.setColor 1
pop temp 0
push pointer 0
call Bat.draw 1
pop temp 0
push constant 0
return
function Output.getMap 1
push argument 0
push constant 32
lt
push argument 0
push constant 126
gt
or
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 0
pop argument 0
label IF_FALSE0
push static 2
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push argument 0
push static 5
add
pop pointer 1
push that 0
pop local 0
goto IF_END1
label IF_FALSE1
push argument 0
push static 6
add
pop pointer 1
push that 0
pop local 0
label IF_END1
push local 0
return
function String.newLine 0
push constant 128
return
function Output.println 0
push static 1
push constant 352
add
push static 0
sub
pop static 1
push constant 0
pop static 0
push constant 0
not
pop static 2
push static 1
push constant 8128
eq
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push constant 32
pop static 1
label IF_FALSE0
push constant 0
return
function String.backSpace 0
push constant 129
return
function Output.backSpace 0
push static 2
if-goto IF_TRUE0
goto IF_FALSE0
label IF_TRUE0
push static 0
push constant 0
gt
if-goto IF_TRUE1
goto IF_FALSE1
label IF_TRUE1
push static 0
push constant 1
sub
pop static 0
push static 1
push constant 1
sub
pop static 1
goto IF_END1
label IF_FALSE1
push constant 31
pop static 0
push static 1
push constant 32
eq
if-goto IF_TRUE2
goto IF_FALSE2
label IF_TRUE2
push constant 8128
pop static 1
label IF_FALSE2
push static 1
push constant 321
sub
pop static 1
label IF_END1
push constant 0
pop static 2
goto IF_END0
label IF_FALSE0
push constant 0
not
pop static 2
label IF_END0
push constant 32
call Output.drawChar 1
pop temp 0
push constant 0
return
function Array.dispose 0
push argument 0
pop pointer 0
push pointer 0
call Memory.deAlloc 1
pop temp 0
push constant 0
return
function Bat.draw 0
push argument 0
pop pointer 0
push this 0
push this 1
push this 0
push this 2
add
push this 1
push this 3
add
call Screen.drawRectangle 4
pop temp 0
push constant 0
return
function Ball.draw 0
push argument 0
pop pointer 0
push this 0
push this 1
push this 0
push constant 5
add
push this 1
push constant 5
add
call Screen.drawRectangle 4
pop temp 0
push constant 0
return
