BITS 32

global ft_strcat

ft_strcat:
    push ebp
    mov ebp, esp
    sub esp, 0x10
    
    mov eax, DWORD [ebp + 0x8]
    mov DWORD [ebp - 0x4], eax
    jmp ft_strcat_2

ft_strcat_3:
    add DWORD [ebp - 0x4], 0x1

ft_strcat_2:
    mov eax, DWORD [ebp - 0x4]
    movzx eax, BYTE [eax]
    test al, al
    jne ft_strcat_3

ft_strcat_5:
    mov edx, DWORD [ebp + 0xc]
    lea eax, [edx + 1]
    mov DWORD [ebp + 0xc], eax

    mov eax, DWORD [ebp - 0x4]
    add DWORD [ebp - 0x4], 0x1
    movzx edx, BYTE [edx]
    mov BYTE [eax], dl

ft_strcat_4:
    mov eax, DWORD [ebp + 0xc]
    movzx eax, BYTE [eax]
    test al, al
    jne ft_strcat_5

ft_strcat_end:
    mov eax, DWORD [ebp - 0x4]
    mov BYTE [eax], 0x0

    mov eax, DWORD [ebp + 0x8] ; return dst ptr

    leave
    ret