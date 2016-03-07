$MODDE0CV

org 0000H
	ljmp myprogram

WaitHalfSec:
	mov R2, #90
L3: mov R1, #250
L2: mov R0, #250
L1: djnz R0, L1
	djnz R1, L2
	djnz R2, L3
	ret
	
myprogram:
	mov SP, #7FH
;56421134
start:	
	mov HEX4, #7FH
	mov HEX5, #77H

	mov HEX3, #12H;5
	mov HEX2, #02H;6
	mov HEX1, #19H;4
	mov HEX0, #24H;2
	lcall WaitHalfSec
	lcall WaitHalfSec

	mov HEX5, #7FH
	mov HEX4, #77H
	
	mov HEX3, #79H
	mov HEX2, #79H
	mov HEX1, #30H
	mov HEX0, #19H
	lcall WaitHalfSec
	lcall WaitHalfSec
	
	ljmp start

	
END

