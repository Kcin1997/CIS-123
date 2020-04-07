; Author: Nicholas Lopez
; Class: CIS123 Assembly Language
; File Name: Lopez_Assignment3_Program2.asm
; Creation Date: 2020-03-04
; Program Description: Declares a bunch of variables.
;                      Values are hard-coded.


.386								;32 bit program.
.model flat,stdcall					;Memory model.
.stack 4096							;Stack allocation 4,096 bytes.
ExitProcess proto,dwExitCode:dword	;Exit procedure prototype.

.data
	var1 BYTE 8
    var2 SBYTE -4
    var3 WORD 60000
    var4 SWORD -30000
    var5 DWORD 70000
    var6 SDWORD -60000
    var7 QWORD 1000000000
    var8 REAL4 -25

.code
main PROC

	INVOKE ExitProcess,0			;Exit program
main ENDP

	;Procedures go here.

END main
