; hello_programmers.asm
; Author: DUSTIN KABAN
; Date: FEBRUARY 23RD, 2021

    %macro write_string 2              		; Macro to implement the write syscall
        mov	eax, 0x4	            	; use the right syscall
        mov	ebx, 0x1	           	; use stdout as the fd
        mov	ecx, %1                 	; use the message as the buffer
        mov	edx, %2                 	; and supply the message length
    	int	0x80                    	; invoke the syscall
	%endmacro

section	.text
	global _start       			; must be declared for using gcc
_start:                 			; tell the linker the entry point
    write_string message1, message1_length 	; display our messages
    write_string message2, message2_length
    write_string message3, message3_length
    
	; now gracefully exit
        ; run our exit syscall with the proper arguments
    
	mov	eax, 0x1	           	; exit syscall
	int	0x80                       	; call kernel

; data section defines our variables for us
section	.data
; create our variables, messages and their lengths
message1	db	'Hello, programmers!',0xA,0xD
message1_length	equ	$ - message1

message2 db 'Welcome to the world of,', 0xA, 0xD
message2_length equ $ - message2

message3 db 'Linux assembly programming!'
message3_length equ $- message3
