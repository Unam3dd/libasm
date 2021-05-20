BITS 32

; char *ft_strcpy(char *dst, char *src)
; {
;   char *tmp = dst;
;   
;   while (*src)
;       *tmp++ = *src++;
;
;   *tmp = 0;
;
;   return (dst);
;}

global ft_strcpy

ft_strcpy:
    ;prolog function
    push ebp
    mov ebp, esp
    
    ; create local variable
    sub esp, 0x10

    ; eax -> dst buffer
    mov eax, DWORD [ebp + 0x8]
    
    ; char *tmp = dst;
    mov DWORD [ebp - 0x4], eax

ft_strcpy_3:
    ; edx -> src buffer
    mov edx, DWORD [ebp + 12]
    
    ; eax -> src + 1
    lea eax, [edx + 1]
    
    ; [ebp + 12] -> src
    mov DWORD [ebp + 12], eax

    ; eax -> tmp
    mov eax, DWORD [ebp - 4]
    
    ; ecx -> ++tmp
    lea ecx, [eax + 1]
    
    ; [ebp - 4] -> tmp
    mov DWORD [ebp - 4], ecx
    
    ; edx -> *src
    movzx edx, BYTE [edx]

    ; eax -> *src
    mov BYTE [eax], dl

ft_strcpy_2:
    ; eax -> src
    mov eax, DWORD [ebp + 12]
    
    ; eax -> *src
    movzx eax, BYTE [ebp + 12]
    
    ; compare byte al == 0 -> ZF = 1
    test al, al
    
    ; jump if not equal
    jne ft_strcpy_3

    ; eax -> tmp
    mov eax, DWORD [ebp - 0x4]

    ; *tmp = 0
    mov BYTE [eax], 0

    ; eax dst buffer
    mov eax, DWORD [ebp + 8]

    ; leave (pop ebp)
    leave

    ; return dst buffer ptr
    ret