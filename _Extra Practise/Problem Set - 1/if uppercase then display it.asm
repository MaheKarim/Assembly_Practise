;Write a program to read character,if it is an uppercase, then display it.   

include "emu8086.inc"
.model small
.stack 100h
.code
main proc
    
    print "Enter a char: "
    mov ah,1h
    int 21h
    mov bl,al
    
    cmp bl,64
    jg check1
    jmp exit1
    
    check1:
    cmp bl,91
    jl check2
    jmp exit1
    
    check2:
    printn
    print "This is uppercase"
    jmp exit
    
    exit1:
    printn
    print "This is not uppercase"
    
    exit:
    main endp
    end main
    