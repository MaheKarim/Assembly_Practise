.MODEL SMALL
.STACK 200H
.CODE


MAIN PROC
    
    ;INPUT FUCTION START
    
    MOV AH,1     ;AH,1 MEANS INPUT FUNCTION
    INT 21H      ;INTERND 21H MEANS EXCUTE NEAREST FUNC 
    MOV BL,AL    ;2 REGISTERD  (now data in BL)
    
    ;INPUT FUNCTION END 
    
    
    MOV AH,2          ;OUTPUT FUNCTION
    MOV DL,BL         ;REVERSE(now data in DL)
    INT 21H    
    
    
    ;EXIT:
    
    MOV AH, 4CH
    INT 21H
    
    
    ;MAIN ENDP


  ; END MAIN ;EXIT