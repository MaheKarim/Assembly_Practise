
;WRITE AN CODE THAT DIPLAY "HELLO WORLD" IF USER PRESS 1
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
    PRINT "PRESS 1 FOR DISPLAY"
    MOV AH, 1
    INT 21H
    
    CMP AL, "1"   
    
    JE ABC
    ABC:
    PRINTN 
    PRINT "HELLO WORLD! "
    
    
      
    JMP EXIT
      
    JNE  EXT   
    
    ext:
    PRINTN
    PRINT "WRONG!"    
    
    
    EXIT:
