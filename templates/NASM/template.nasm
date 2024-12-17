; cuilan's nasm program template file
; author: zhangyan
; date: 2024-05-06 10:34
;
; Assembly with nasm -f elf template.asm

; 选择输出格式，例如 elf、elf32、elf64、bin 等
format elf

; 可以在这里包含其他文件，例如宏定义或库文件
%include "macros.inc"
%include "functions.inc"

section .data
; 初始化数据放在这里，例如字符串、整数等

section .bss
; 未初始化的数据放在这里，例如全局变量或静态变量

section .text   ; 代码放在这里
    global  _start

_start:
    ; 程序入口点，这里开始写程序的执行逻辑

    ; 示例：将 1 和 2 相加，并输出结果
    mov eax, 1
    add eax, 2

    ; 退出程序，返回结果
    mov ebx, eax  ; 将结果保存到 ebx 寄存器
    mov eax, 1    ; 设置退出系统调用号为 1
    int 0x80      ; 发起系统调用，退出程序