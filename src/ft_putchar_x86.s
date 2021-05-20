BITS 32

global ft_putchar

ft_putchar:
    push ebp
    mov ebp, esp

    mov eax, 0x4
    mov ebx, 0x1
    push DWORD [ebp + 0x8]
    mov ecx, esp
    mov edx, 1
    int 0x80
    pop DWORD [ebp + 0x8]

    nop
    nop
    leave
    ret