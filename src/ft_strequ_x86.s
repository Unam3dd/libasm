BITS 32

;https://c9x.me/x86/html/file_module_x86_id_288.html

global ft_strequ

ft_strequ:
    push ebp
    mov ebp, esp
    jmp ft_strequ_2

ft_strequ_3:
    add DWORD [ebp + 0x8], 0x1
    add DWORD [ebp + 0xc], 0x1

ft_strequ_2:
    mov eax, DWORD [ebp + 0x8]
    movzx eax, BYTE [eax]
    test al, al
    je ft_strequ_4

    mov eax, DWORD [ebp + 0xc]
    movzx eax, BYTE [eax]
    test al, al
    je ft_strequ_4

    mov eax, DWORD [ebp + 0x8]
    movzx eax, BYTE [eax]
    mov edx, DWORD [ebp + 0xc]
    movzx edx, BYTE [edx]

    cmp dl, al
    je ft_strequ_3

ft_strequ_4:
    mov eax, DWORD [ebp + 0x8]
    movzx eax, BYTE [eax]
    mov edx, DWORD [ebp + 0xc]
    movzx edx, BYTE [edx]
    cmp al, dl
    sete al ; The sete instruction (and its equivalent, setz) sets its argument to 1 if the zero flag is set or to 0 otherwise. The zero flag is set if the last comparison or arithmetic instruction yielded equality or a result of zero. Thus in your case, sete sets al to 0 or 1 according to the result of the preceeding cmp instruction.
    leave
    ret