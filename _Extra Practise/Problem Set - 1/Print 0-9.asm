; Write a programme that will print 0 to 9

INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV CX,10   ; total letter
    MOV AH,2    ; output see
    MOV DL,"0"  ; print start
   
   LEVEL: 
    
    INT 21H
    INC DL
    LOOP LEVEL
    
    MAIN ENDP
END MAIN