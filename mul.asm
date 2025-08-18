global _start

section .data
    result dw 0   
          
section .text
_start:
    mov al,4 
    mov bl,5   
    mul bl        
    mov[result],ax
    
    mov eax,1
    xor ebx,ebx
    int 80h
