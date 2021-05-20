BITS 32

global ft_putstr

ft_putstr:
    push ebp
    mov ebp, esp
    sub esp, 0x10
    
ft_putstr_2:
    mov eax, DWORD [ebp + 0x8]
    movzx eax, BYTE [eax]
    test al, al
    je ft_putstr_end
    
    mov eax, DWORD [ebp + 0x8]
    lea edx, [eax + 0x1]
    push edx
    movzx eax, BYTE [eax]
    push eax

    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, esp
    mov edx, 0x1
    int 0x80

    pop eax
    pop DWORD [ebp + 0x8]
    jmp ft_putstr_2


ft_putstr_end:
    nop
    nop
    leave
    ret