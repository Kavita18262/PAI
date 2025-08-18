global _start

section .data
    result dw 0   
          
section .text
_start:
    mov ax,30000  
    mov dx,40000   
    mul dx        
    mov[result],ax
    
    mov eax,1
    xor ebx,ebx
    int 80h
