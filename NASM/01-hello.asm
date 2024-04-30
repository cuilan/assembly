; Hello World assembly program with NASM

extern _printf

section .data
	msg db 'Hello World!', 0Ah ; assign msg variable with your message string

section .text
global _main

_main:
	push msg
	call _printf
	add esp, 4
	ret
