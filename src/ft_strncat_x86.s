BITS 32

global ft_strncat

ft_strncat:
    push ebp
    mov ebp, esp
    sub esp, 0x10
    mov eax, DWORD [ebp + 0x8]
    mov DWORD [ebp - 0x4], eax
    jmp ft_strncat_2


ft_strncat_3:
    add DWORD [ebp - 0x4], 0x1

ft_strncat_2:
    mov eax, DWORD [ebp - 0x4]
    movzx eax, BYTE [eax]
    test al, al
    je ft_strncat_4
    jmp ft_strncat_3

ft_strncat_5:
    mov edx, DWORD [ebp + 0xc]
    
    lea eax, [edx + 1]
    mov DWORD [ebp + 0xc], eax

    movzx edx, BYTE [edx]
    mov eax, DWORD [ebp - 0x4]
    mov BYTE [eax], dl
    add DWORD [ebp - 0x4], 0x1
    sub DWORD [ebp + 0x10], 0x1

ft_strncat_4:
    mov eax, DWORD [ebp + 0xc]
    mov edx, DWORD [ebp + 0x10]
    movzx eax, BYTE [eax]
    test al, al
    je ft_strncat_end
    test edx, edx
    je ft_strncat_end
    
    jmp ft_strncat_5

ft_strncat_end:
    mov eax, DWORD [ebp - 0x4]
    mov BYTE [eax], 0x0
    mov eax, DWORD [ebp + 0x8]
    leave
    ret