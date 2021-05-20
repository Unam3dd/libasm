BITS 32

;The difference between MOVZX and MOVSX is simply that
;MOVZX can be used on unsigned values while MOVSX can be used on signed value.

global ft_strcmp

ft_strcmp:
    push ebp
    mov ebp, esp
    jmp ft_strcmp_2

ft_strcmp_add:
    add DWORD [ebp + 0x8], 0x1
    add DWORD [ebp + 0xc], 0x1

ft_strcmp_2:
    
    mov eax, DWORD [ebp + 0x8]
    movzx eax, BYTE [eax]
    test al, al
    je ft_strcmp_3

    mov eax, DWORD [ebp + 0xc]
    movzx eax, BYTE [eax]
    test al, al
    je ft_strcmp_3

    mov eax, DWORD [ebp + 0x8]
    movzx edx, BYTE [eax]
    mov eax, DWORD [ebp + 0xc]
    movzx eax, BYTE [eax]
    cmp dl, al
    je ft_strcmp_add

ft_strcmp_3:
    mov eax, DWORD [ebp + 0x8]
    movzx eax, BYTE [eax]
    movsx edx, al
    
    mov eax, DWORD [ebp + 0xc]
    movzx eax, BYTE [eax]
    movsx ecx, al
    
    mov eax, edx
    sub eax, ecx
    leave
    ret