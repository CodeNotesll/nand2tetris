// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(LOOP)
  @8192  // number of word on screen
    D=A
  @n
    M=D
  @i
    M=0  // number of word blackend
  @SCREEN
    D=A
  @addr
    M=D   // base addr
  @KBD
    D=M // listen to keyboard input
  @BLACK
    D;JGT
  (LOOPscreen)
    @i
      D=M
    @n
      D=D-M
    @LOOP
      D; JEQ  // if i ==n goto LOOP 
    @i
      D=M
    @addr
      A=D+M
      M=0
    @i
      M=M+1  // i = i + 1
    @LOOPscreen
      0;JMP   // go back to black the screen

  (BLACK)
    (LOOPscreen)
      @i
        D=M
      @n
        D=D-M  // n = 8192
      @LOOP
        D; JEQ  // if i ==n goto LOOP 
      @i
        D=M
      @addr
        A=D+M
        M=-1
      @i
        M=M+1  // i = i + 1
    @LOOPscreen
      0;JMP   // go back to black the screen
@LOOP
    0; JMP // infinite loop
