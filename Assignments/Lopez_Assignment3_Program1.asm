; Author: Nicholas Lopez
; Class: CIS123 Assembly Language
; File Name: Lopez_Assignment3_Program1.asm
; Creation Date: 2020-03-04
; Program Description: Calculates A = (A + B) − (C + D)
;                      Values are hard-coded.


.386								;32 bit program.
.model flat,stdcall					;Memory model.
.stack 4096							;Stack allocation 4,096 bytes.
ExitProcess proto,dwExitCode:dword	;Exit procedure prototype.

.data
	;Declare variables here.

.code
main PROC
	mov eax, 8             ; EAX = 8
    mov ebx, 5             ; EBX = 5

    mov ecx, 7             ; ECX = 7
    mov edx, 4             ; EDX = 4

    add eax, ebx           ; EAX += EBX
    add ecx, edx           ; ECX += EDX

    sub eax, ecx           ; EAX -= ECX

	INVOKE ExitProcess,0			;Exit program
main ENDP

	;Procedures go here.

END main
