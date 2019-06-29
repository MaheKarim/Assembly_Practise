;WRITE AN CODE THAT WILL DISPLAY THE FIRST CHARACTER THAT IS CAME IN CHARACTER
;SEQUENCE THAT IS STORED IN AL AND BL REGISTER



INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
         
         
       PRINT "ENTER YOUR BL VALUE: " 
           MOV AH, 01H
           INT 21H  
           MOV BL, AL 
           
           PRINTN
          PRINT "ENTER YOUR AL VALUE: "  
          INT 21H
          
          
           CMP BL,AL
           JL EXT
           
           PRINTN
           MOV AH,2
           MOV DL, AL
           INT 21H
           JMP EXIT
           
           
           
           EXT:
           PRINTN
           MOV AH, 2
           MOV DL, BL
           INT 21H
           
            
           EXIT:
           
          
          
              
           
           
           
    
    
    
