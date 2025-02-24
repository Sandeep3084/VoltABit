Example x86 assembly (NASM syntax)
bits 16
org 0x7C00

start:
    jmp start; 
times 510 - ($-$$) db 0
dw 0xAA55             ; Boot signature
