BITS 32

global ft_atoi

ft_atoi:
    push ebp
    mov ebp, esp
    sub esp, 16
    mov DWORD [ebp - 0x4], 0x0
    jmp ft_atoi_2

ft_atoi_3:
    mov edx, DWORD [ebp - 0x4]
    mov eax, edx
    shl eax, 0x2
    add eax, edx
    add eax, eax
    mov DWORD [ebp - 0x4], eax
    mov eax, DWORD [ebp + 0x8]
    lea edx, [eax + 0x1]
    mov DWORD [ebp + 0x8], edx
    movzx eax, BYTE [eax]
    movsx eax, al
    and eax, 0xF
    add DWORD [ebp - 0x4], eax

ft_atoi_2:
    mov eax, DWORD[ebp + 0x8]
    movzx eax, BYTE [eax]
    test al, al
    je ft_atoi_end

    mov eax, DWORD [ebp + 0x8]
    movzx eax, BYTE [eax]
    cmp al, 0x2F
    jl ft_atoi_end

    mov eax, DWORD [ebp + 0x8]
    movzx eax, BYTE [eax]
    cmp al, 0x39
    jl ft_atoi_3

ft_atoi_end:
    mov eax, DWORD [ebp - 0x4]
    leave
    ret