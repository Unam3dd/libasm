BITS 32

; void ft_bzero(void *s, size_t n)
; {
;       char *ptr_s = (char *)s;
;
;       while (*ptr_s && --n)
;           *ptr_s = 0;
;
; }

global ft_bzero

ft_bzero:
    push ebp
    mov ebp, esp
    sub esp, 0x10

    mov eax, DWORD [ebp + 0x8]
    mov DWORD [ebp - 0x4], eax
    jmp ft_bzero_2

ft_bzero_2:
    mov eax, DWORD [ebp - 0x4]
    lea edx, [eax + 1]
    mov DWORD [ebp - 0x4], edx
    mov byte [eax], 0x0

ft_bzero_3:
    mov eax, DWORD [ebp - 0x4]
    movzx eax, BYTE [eax]
    test al, al
    jne ft_bzero_2
    je ft_bzero_end
    sub DWORD [ebp + 0xc], 1
    cmp DWORD [ebp + 0xc], 0
    jne ft_bzero_2
    nop

ft_bzero_end:
    nop
    leave
    ret