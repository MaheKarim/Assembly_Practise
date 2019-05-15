                                    ;CODE by Mahe Karim
                                    ;Date: 16 May 2019

   .MODEL SMALL 
   .STACK 100H                      ; stack size 100 hexadecimal
   .DATA
        MSG DB "HELLO WORLD! $"
                                    ; the $ sign means end OF the string
                                    ; MSG just a variable

    .CODE                           ; code segmentation start 
    MAIN PROC                       ; procedure start from here

    MOV AX, DATA                    ; address data to ax
    MOV DS, AX                      ; initialize DS 

    ; from here we start display message actually msg variable

    LEA DX, MSG                     ; get message
    MOV AH, 9                       ; AH, 9 is a string display function
    INT 21H                         ; display that msg  and executing 

    ; return to DOS 

    MOV AH, 4CH
    INT 21H                         ; exit from DOS / exit()

    MAIN ENDP                       ; main func (main proc) end 
    ENDP                            ; program end




;    LEA means Load Effective Address. It's puts the copy of the source address to destination
;    DATA => is defined by data segment


