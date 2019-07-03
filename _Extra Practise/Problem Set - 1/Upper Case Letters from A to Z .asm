;Program to print Upper Case Letters from A to Z  

INCLUDE "emu8086.inc"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    MOV CX,26
    MOV AH,2
    MOV DL,"A"
    
    LEVEL:
    INT 21H
    INC DL
    LOOP LEVEL
    
    MAIN ENDP
END MAIN