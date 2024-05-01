; Hello World assembly program with NASM

; extern _printf
global _main

section .data
	msg db 'Hello World!', 0xA ; assign msg variable with your message string

section .text

_main:
	push msg
	; call _printf
	add esp, 4
	ret
