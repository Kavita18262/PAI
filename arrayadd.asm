section .data
    msg  db "Result = ",0
    msglen equ $-msg
    resh db 0         ; tens digit (ASCII stored here)
    resl db 0         ; ones digit (ASCII stored here)

section .text
    global _start

_start:
    mov al, 10
    mov bl, 20
    add al, bl      
    ; Split into decimal digits
    aam          ; AH=3, AL=0

    ; Convert to ASCII
    add ah, '0'
    add al, '0'

    ; Store digits
    mov [resh], ah    ; store tens as ASCII
    mov [resl], al    ; store ones as ASCII
    
    mov eax, 4        ; sys_write
    mov ebx, 1        ; stdout
    mov ecx, msg
    mov edx, msglen       ; length of "Result = "
    int 0x80

    ; ---- Print resh (tens) ----
    mov eax, 4
    mov ebx, 1
    mov ecx, resh
    mov edx, 1
    int 0x80

    ; ---- Print resl (ones) ----
    mov eax, 4
    mov ebx, 1
    mov ecx, resl
    mov edx, 1
    int 0x80

    ; ---- Exit ----
    mov eax, 1
    xor ebx, ebx
    int 0x80
