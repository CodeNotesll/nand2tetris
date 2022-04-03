// blacken top left of screen 16 pixels and n rows (in RAM[0])
@i
  M=0  // num of rows blackend
@j
  M=0
@R0
  D=M
@n
  M=D   // store the number of rows
@SCREEN
  D=A
@addr
  M=D  // base address
@32
  D=A
@step
  M=D
(LOOP)
  @n
    D=M
  @i
    D=D-M
  @END
    D;JEQ  // if i==n goto end
  @j
    D=M
  @addr
    A=M+D  // A= addr + j
    M=-1   //  
  @step
    D=M   // 32
  @j
    M=M+D //j = j+ 32
  @i
    M=M+1
  @LOOP
    0;JMP   // goto loop

(END)
  @END
    0;JMP

