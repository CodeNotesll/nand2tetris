// add R0 and R1, store the sum in R3
@R0 
  D=M
@R1
  D=M+D
@R2
  M=D
(END)
@END
  0;JMP
