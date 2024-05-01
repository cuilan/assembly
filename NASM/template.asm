; Assembly with  nasm -f elf template.asm
; Link with ld -m elf_i386 template.o -o template
; 
; Or just run make like a chad

; %include ""
global _main

section .data

    startUpString db "NASM template", 0xA
    strLength equ $-startUpString

section .text

_main:

    mov esi, startUpString
    mov ecx, strLength

    ; call WriteString

    ; returen zero
    mov eax, 0x1
    mov ebx, 0
    int 0x80