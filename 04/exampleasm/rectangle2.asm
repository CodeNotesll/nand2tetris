// another implementation of rectangel1
@R0
  D=M
@n
  M=D
@i
  M=0
@SCREEN
  D=A
@addr
  M=D
(LOOP)
  @i
    D=M
  @n
    D=D-M
  @END
    D; JEQ  // if i ==n goto END
  @addr
    A=M
    M=-1
  @32
    D=A
  @addr
    M=D+M  // addr = addr + 32
  @i
    M=M+1  // i = i + 1
  @LOOP
    0;JMP

(END)
  @END
    0; JMP
