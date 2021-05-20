BITS 32

global ft_strncpy

ft_strncpy:
    push ebp
    mov ebp, esp
    sub esp, 0x10
    mov eax, DWORD [ebp + 0x8]
    mov DWORD [ebp - 0x4], eax
    jmp ft_strncpy_2

ft_strncpy_3:
    mov edx, DWORD [ebp + 0xc]
    lea eax, [edx + 1]
    mov DWORD [ebp + 0xc], eax
    mov eax, DWORD [ebp - 0x4]
    lea ecx, [eax + 0x1]
    mov DWORD [ebp - 0x4], ecx
    movzx edx, BYTE [edx]
    mov BYTE [eax], dl

ft_strncpy_2:
    mov eax, DWORD [ebp + 0xc]
    movzx eax, BYTE [eax]
    test al, al
    je ft_strncpy_end

    mov eax, DWORD [ebp + 0x10]
    lea edx, [eax- 1]
    mov DWORD [ebp + 0x10], edx
    test eax, eax
    jne ft_strncpy_3

ft_strncpy_end:
    mov eax, DWORD [ebp - 0x4]
    mov BYTE [eax], 0
    mov eax, DWORD [ebp + 0x8]
    leave
    ret