INCLUDE "EMU8086.INC"

.MODEL SMALL
.STACK 100H
.CODE 

         MAIN PROC
           
         MOV DL, 007                        ; PRINT Dl REG AND BEEP CODE ASCII VALUE
         MOV AH, 2                          ; PRINT OUTPUT
         INT 21H                            ; INTERUPT DOS


         MAIN ENDP                           ; END PROGRAME
         END MAIN