section .data
    msg db 'Hello, World!',0xA
    msg_len equ $-msg

section .text
    global _start

_start:
    ; write(msg, msg_len, 1)
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, msg_len
    int 0x80

    ; exit(0)
    mov eax, 1
    xor ebx, ebx
