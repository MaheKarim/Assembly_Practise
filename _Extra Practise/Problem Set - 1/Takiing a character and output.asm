;Write a program taking a character and output in a new line. 

INCLUDE "emu8086.inc"
.MODEL SMALL
.STACK 100h
.CODE

   MAIN PROC
    
      MOV AH,1H
      INT 21H         ; INPUT TAKING
      MOV BL,AL
      
      PRINTN         ; print order
      
      MOV AH,2H      ; OUTPUT
      MOV DL,BL      ; STORE IN DL
      INT 21h
    
    MAIN ENDP
    END MAIN