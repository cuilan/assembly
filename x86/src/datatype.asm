[org 0x700] ; 标识程序从0x700地址开始

mov ax, 3   ;清空屏幕
int 0x10

mov ax, 0xb800 ; 实模式下文本模式的内存地址
mov es, ax

mov ax, 0  ;段寄存器不能直接mov赋值，此行相当于 ds=0
mov ds, ax

mov si, message ; 要输入的文本地址
mov di, 0
mov cx, (message_end - message) / 2 ; 字符串长度

loop1:
    mov al, [ds:si] ; ds:si指向字符串的地址
    mov [es:di], al ; es:di指向屏幕的地址

    inc si      ; 字符串地址加1
    add di, 2   ; 屏幕地址加2，因为一个字符占两个字节
    
    loop loop1


message:     ; 标记此处地址
    db 'Hello, world!', 0
message_end:    ; 字符串结束标志

halt:
    jmp halt ; 死循环

times 510-($-$$) db 0 ; 填充剩余空间
db 0x55, 0xaa ; 文件结束标志
