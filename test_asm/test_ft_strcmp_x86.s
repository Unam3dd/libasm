BITS 32

global _start

%include "../src/ft_strcmp_x86.s"

section .rodata
    str1 db "hello world", 0x0
    str2 db "hello test", 0x0

section .text
_start:
    push str2
    push str1
    call ft_strcmp

    mov eax, 0x1
    mov ebx, 0x0
    int 0x80