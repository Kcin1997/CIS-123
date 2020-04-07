; Author: Jayeola, Lopez
; Class: CIS123 Assembly Language
; File Name: Jayeola_Lopez_Lab4.asm
; Creation Date: The date you first created this program
; Program Description: Describe with a short paragraph what your
;                      program does and its purpose. Explain in general
;                      terms the expected inputs and output result. 

.386								;32 bit program.
.model flat,stdcall					;Memory model.
.stack 4096							;Stack allocation 4,096 bytes.
ExitProcess proto,dwExitCode:dword	;Exit procedure prototype.

.data
	bVal  BYTE   100
	bVal2 BYTE   ?
	wVal  WORD   2
	dVal  DWORD  5

.code
main PROC
	;mov ds,45			; No immediate to segment moves
	;mov esi,wVal		; Mismatched sizes
	;mov eip,dVal		; MOV can not assign to EIP
	;mov 25,bVal		; You cant put an immedate opperand as the destination
	;mov bVal2,bVal		; You can't move a varible directly to another varible

	; Excercise 2

	INVOKE ExitProcess,0			;Exit program
main ENDP

	;Procedures go here.

END main