org 0x7c00

section .text
    global _start

_start:
    ; 清除螢幕
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ah, 0x06  
    mov al, 0x00  
    mov bh, 0x07  
    mov cx, 0x00  
    mov dx, 0x184f 
    int 0x10      

    ; 顯示 No pig killing!
    mov ah, 0x0e  
    mov al, 'N' 
    int 0x10
    mov al, 'o' 
    int 0x10
    mov al, ' ' 
    int 0x10
    mov al, 'p' 
    int 0x10
    mov al, 'i' 
    int 0x10
    mov al, 'g' 
    int 0x10
    mov al, ' ' 
    int 0x10
    mov al, 'k' 
    int 0x10
    mov al, 'i' 
    int 0x10
    mov al, 'l' 
    int 0x10
    mov al, 'l' 
    int 0x10
    mov al, 'i' 
    int 0x10
    mov al, 'n' 
    int 0x10
    mov al, 'g' 
    int 0x10
    mov al, '!' 
    int 0x10

loop:
    jmp loop 

times 510 - ($-$$) db 0
dw 0xaa55
