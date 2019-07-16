INCLUDE "EMU8086.INC"

.MODEL SMALL
.STACK 100H
.CODE


MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL, AL
    
    INT 21H
    MOV BH,AL 
    
    INT 21H
    MOV CL, AL 
    
    
   
    
    CMP BL,BH        ; BL HOILE LEVEL1 JAU
    JL LEVEL1
                      ; 1 - 2
    CMP BH, CL       ; 2 - 3
    JL LEVEL2   
    MOV AH,2
    MOV DL,CL          ; PRINT CL
    INT 21H  
    JMP EXIT

   LEVEL2:
   MOV AH,2
   MOV DL,BH            ; PRINT BH
   INT 21H
   JMP EXIT
   
   
   LEVEL1:
   CMP BL,CL  
   JL LEVEL3
   MOV AH,2            ; PRINT CL
   MOV DL, CL
   INT 21H
   JMP EXIT
            
   LEVEL3:
   MOV AH,2
   MOV DL,BL
   INT 21H
   
   EXIT:
   
   MOV AH,4CH
   INT 21H
   
   MAIN ENDP
END MAIN
   
    