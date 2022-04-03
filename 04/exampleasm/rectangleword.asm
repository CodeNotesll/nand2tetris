//  blacken words row by row  number of words range from 0 to 256*32 (8192)
@R0
  D=M  // number of words 
@n
  M=D
@i
  M=0
@SCREEN
  D=A
@addr
  M=D   // base addr
(LOOP)
  @i
    D=M
  @n
    D=D-M
  @END
    D; JEQ  // if i ==n goto END
  @i
    D=M
  @addr
    A=D+M
    M=-1
  //@32
   // D=A
  //@addr
    //M=D+M  // addr = addr + 32
  @i
    M=M+1  // i = i + 1
  @LOOP
    0;JMP

(END)
  @END
    0; JMP
