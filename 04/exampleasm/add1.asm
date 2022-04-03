// sum = 1+2+3....n, n stored in R0 store the result in R1 

// sum = 0;
// i = 0;
// if i > n goto end
// else sum = sum + 1
//      i = i + 1
@sum 
  M=0
@i
  M=0
@R0
  D=M
@n
  M=D
(LOOP)
  @i
    D=M
  @n
    D=D-M  // i - n
  @END
    D;JGT
  @i
    D=M
  @sum
    M=M+D
  @i
    M=M+1
  @LOOP
    0;JMP
END
  @END
    0;JMP
