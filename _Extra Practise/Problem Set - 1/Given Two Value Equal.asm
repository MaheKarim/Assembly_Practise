;Write a program that will "Check given values are equal or not"   

include "emu8086.inc"
.model small
.stack 100h
.code
main proc
    
    print "Enter a number: "
    mov ah,1
    int 21h
    mov bl,al
    
    printn
    print "Enter another number: "
    mov ah,1
    int 21h
    mov cl,al
    
    cmp bl,cl
    je check
    jne check2
    jmp exit
    
    check:
    printn
    print "Numbers are equal"
    jmp exit
    
    check2:
    printn
    print "Numbers are not equal"
    jmp exit
    
    exit:
    main endp
end main