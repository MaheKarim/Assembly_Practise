INCLUDE "EMU8086.INC"

.MODEL SMALL
.STACK 100H
.CODE

   MAIN PROC
    
    
    PRINT "ENTER YOUR FIRST VALUE: "
    MOV AH, 1
    INT 21H
    MOV BH, AL
    
    PRINTN
    PRINT "ENTER YOUR SECONED VALUE: "
    INT 21H
    MOV BL, AL
    
    PRINTN
    PRINT "ENTER YPUR THIRD VALUE: "   
    INT 21H
    MOV CH, AL
    
    ADD BH, BL
    SUB BH, 30H
    
    SUB BH, CH
    ADD BH, 30H
    
    
    PRINT "THE RESULT OF (A+B)-C IS : "
    MOV AH, 2
    MOV DL, BH
    INT 21H
    
    
    MOV AX, 4C00H
    INT 21H
    
    
    MAIN ENDP
   
   END MAIN