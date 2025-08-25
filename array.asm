section .text
   global _start;

_start:
    mov eax,x
    mov ebx,0
    mov ecx,5
    
top: add ebx,[eax]
 add eax,1
 loop top
 
done:
  add ebx,'0'
  mov [sum],ebx
  
display:
   mov edx,1
   mov ecx,sum
   mov ebx,1
   mov eax,4
   int 80h
   
   mov eax,1
   int 80h
   
section .data
global x
x:
  db 1
  db 2
  db 3
  db 1
  db 2
  
 sum:
   db 0,0xa

