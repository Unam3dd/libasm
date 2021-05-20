BITS 32

;size_t ft_strlen(const char *str)
;{
;    char *start = (char *)str;
;
;    while (*str)
;        str++;
;
;    return (str - start);
;}

global ft_strlen

ft_strlen:
    push ebp
    mov ebp, esp
    sub esp, 0x10
    mov eax, DWORD [ebp + 0x8]
    mov DWORD [ebp - 0x4], eax
    jmp ft_strlen_2

ft_strlen_3:
    add DWORD [ebp + 0x8], 0x1

ft_strlen_2:
    mov eax, DWORD [ebp + 0x8]
    movzx eax, BYTE [eax]
    test al, al
    jne ft_strlen_3
    mov eax, DWORD [ebp + 0x8]
    sub eax, DWORD [ebp - 0x4]
    leave
    ret