INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE

    MAIN PROC


    MOV AH,1
    INT 21H
    MOV BL, AL

    MOV AH,1
    INT 21H
    MOV CL, AL

    ADD BL,CL
    SUB BL, CL

    MOV AH,2
    MOV DL, BL
