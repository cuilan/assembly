
format elf

section .data
	msg db "Hello World!", 0xA	; 定义字符串并以 0xA 换行符结束
	length equ	$-msg			; 计算字符串长度

section .text
	global _start

_start:
	; 使用 Linux 系统调用来打印字符串
	mov eax, 4			; 系统调用编号，4 表示 sys_write
	mov ebx, 1			; 文件描述符 1 表示标准输出（stdout）
	mov ecx, msg		; 字符串的地址
	mov edx, 13			; 字符串的长度，包括换行符
	int 0x80			; 发起系统调用
	
	; 退出程序
	mov eax, 1			; 系统调用编号，1 表示 sys_exit
	xor ebx, ebx		; 返回值为 0
	int 0x80			; 发起系统调用
