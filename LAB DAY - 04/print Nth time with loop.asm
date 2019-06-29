INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC

       MOV AH, 1
       INT 21H 
       MOV BL, AL
        
       
       
  UP:
  PRINTN
  PRINT "HELLO WORLD!"
  
  DEC BL
  CMP BL, '0'
  JG UP
    

EXIT:      
