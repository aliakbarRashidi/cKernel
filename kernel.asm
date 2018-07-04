bits 32
section     .text
    align   4
    dd      0x1BADB002
    dd      0x00
    dd      - (0x1BADB002+0x00)
global start 
extern kmain            ; C code (kernel.c)
start:
        cli             ; Stops the interrupts
        call kmain      ; Start kmain function in C code
        hlt             ; Stop CPU
