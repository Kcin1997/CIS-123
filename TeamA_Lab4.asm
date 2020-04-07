; Author: Jayeola, Lopez
; Class: CIS123 Assembly Language
; File Name: TeamA_Lab4.asm
; Creation Date: 2020-03-04
; Program Description: Describe with a short paragraph what your
;                      program does and its purpose. Explain in general
;                      terms the expected inputs and output result. 

.386								;32 bit program.
.model flat,stdcall					;Memory model.
.stack 4096							;Stack allocation 4,096 bytes.
ExitProcess proto,dwExitCode:dword	;Exit procedure prototype.

.data
	; Excercise 1
	bVal  BYTE   100
	bVal2 BYTE   ?
	wVal  WORD   2
	dVal  DWORD  5

	array2 DWORD 1,2,3		; Excercise 2

	array3 BYTE 80h,66h,0A5h; Excercise 3

	array4 BYTE 0FFh, 0		; Excercise 4

	; Excercise 5
	Xval SDWORD ?
	Yval SDWORD ?
	Zval SDWORD ?
	Rval SdWORD 0

.code
main PROC
	;mov ds,45				; No immediate to segment moves
	;mov esi,wVal			; Mismatched sizes
	;mov eip,dVal			; MOV can not assign to EIP
	;mov 25,bVal			; You cant put an immedate opperand as the destination
	;mov bVal2,bVal			; You can't move a varible directly to another varible

	; Excercise 2
	
	mov EAX, [array2]		; EAX = arrayD[0]
	xchg EAX, [array2 + 4]	; swap EAX and arrayD[1]
	xchg EAX, [array2 + 8]	; swap EAX and arrayD[2]
	mov [array2], EAX		; array[0] = EAX

	; Excercise 3

	mov al,[array3]
	add al,[array3 + 1]
	add al,[array4 + 2]		; AL = 85h

	;mov ax,[array3]		; Code does not work as AX is a WORD not a BYTE
	;add ax,[array3 + 1]
	;add ax,[array3 + 2]

	; Excercise 4

	mov al,[array4]			; AL = FFh
	mov ah,[array4 + 1]		; AH = 00h
	dec ah					; AH = FFh
	inc al					; AL = 00h
	dec ax					; AX = FEFFh

	; Excercise 5

	mov EAX, Xval			; EAX = Xval
	mov EBX, Yval			; EBX = Yval
	mov ECX, Zval			; ECX = Zval

	neg EBX					; 2's complement EBX
	add EBX, ECX			; EBX += ECX
	sub EAX, EBX			; EAX -= EBX
	mov Rval, EAX			; Rval = EAX

	; Excercise 6

	mov ax,00FFh
	add ax,1				; AX= 0100h SF= 0 ZF= 0 CF= 0
	sub ax,1				; AX= 00FFh SF= 0 ZF= 0 CF= 0
	add al,1				; AL= 0000h SF= 0 ZF= 1 CF= 1
	mov bh,6Ch
	add bh,95h				; BH= 0100h SF= 0 ZF= 0 CF= 1

	mov al,2
	sub al,3				; AL= 00FFh SF= 1 ZF= 0 CF= 1


	INVOKE ExitProcess,0			;Exit program
main ENDP

	;Procedures go here.

END main