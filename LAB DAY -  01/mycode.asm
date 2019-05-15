   .MODEL SMALL
   .STACK 100H
   .DATA
        MSG DB "HELLO WORLD! "

    .CODE

    MOV AX, DATA
    MOV DS, AX


    LEA DX, MSG
    MOV AH, 09H
    INT21H

    END 