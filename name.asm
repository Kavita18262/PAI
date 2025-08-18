global _start

section .data
     f_name db "Kavita",0xA
     length equ $-f_name
     surname db "Joshi",0xA
     surnamelength equ $-surname
     
section .text
_start:
     mov eax,4
     mov ebx,1
     mov ecx,f_name
     mov edx,length
     int 80h
     
     mov eax,4
     mov ebx,1
     mov ecx,surname
     mov edx,surnamelength
     int 80h
     
     
     xor ebx,ebx
     mov eax,1
     int 80h
