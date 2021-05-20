BITS 32

%include "../src/ft_strlen_x86.s"

global _start

section .data
    msg db "hello", 0x0


section .text
_start:
    push msg
    call ft_strlen
