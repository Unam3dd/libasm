BITS 32

%include "src/ft_strcpy_x86.s"

global _start

section .bss
    buffer resb 0x100

section .data
    msg db "hello world", 0xa, 0x0

section .text
_start:
    push msg
    push buffer
    call ft_strcpy
    jmp _write


_write:
    push eax
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, buffer
    mov edx, 0x100
    int 0x80
    jmp _exit

_exit:
    mov eax, 0x1
    mov ebx, 0x0
    int 0x80