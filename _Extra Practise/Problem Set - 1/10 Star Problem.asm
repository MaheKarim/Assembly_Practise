;Write a program to print 10 ' * ' in a row. 

include "emu8086.inc"
.model small
.stack 100h
.code
main proc
    
    mov cx,10
    mov ah,2
    mov dl,"*"
    
    level:
    int 21h
    loop level
    
    main endp
    end main