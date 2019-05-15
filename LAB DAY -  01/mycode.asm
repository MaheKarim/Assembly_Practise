    ;CODE by Mahe Karim
   
   .MODEL SMALL
   .STACK 100H
   .DATA
        MSG DB "HELLO WORLD! $"
                                     ; the $ sign means end OF the string
                                     ; MSG just a variable
    .CODE                            ; code segmentation start 
    MAIN PROC                       ; procedure start from here

    MOV AX, DATA
    MOV DS, AX                      ; initialize DS 

    ; from here we start display message actually msg variable

    LEA DX, MSG                     ; get message
    MOV AH, 9                       ; display string function
    INT 21H                         ; display that msg  and executing 

    ; return to DOS 

    MOV AH, 4CH
    INT 21H

    MAIN ENDP
    ENDP


    
;    LEA means 
;    DATA => is defined by data segment


