global _start

section .data
    sub:db 0

section .text
_start:
    mov al, 5        
    mov bl, 3         
    sub al, bl        
    mov [sub], al    

    
    mov eax, 1        
    xor ebx, ebx      
    int 80h

