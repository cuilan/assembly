# exit.s
    .section    __TEXT,__text       # 伪指令 段名,节名  代码放在 __TEXT 段的 __text 节中
    .globl      _main
    .equ        maxCount, 0x114514  # 定义字面量
_main:
    movq $maxCount, %rax            # 将字面量移至rax寄存器
    retq