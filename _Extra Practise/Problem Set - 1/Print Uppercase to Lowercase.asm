;Write a program that will convert from upper case to lower case  

INCLUDE "emu8086.inc"
.MODEL SMALL
.STACK 100h
.CODE

MAIN PROC
    
    PRINT "Enter an UPPER CASE letter: "
    MOV AH,1
    INT 21H
    MOV BL,AL      ; INPUT TO BL
    
    ADD BL,32
    PRINTN
    PRINT "Lower case is: "
    
    MOV AH,2H
    MOV DL,BL
    INT 21H
    
   MAIN ENDP
   END MAIN