INCLUDE "EMU8086.INC"                     ; emu8086 helper added

.MODEL SMALL
.STACK 100H
.CODE
                                         
   MAIN PROC                              ; main procedure start
    
    
    PRINT "ENTER YOUR FIRST VALUE: "
    MOV AH, 1
    INT 21H                               ; call the interrupt handler 0x21
    MOV BH, AL                            ; first value store
    
    PRINTN
    PRINT "ENTER YOUR SECONED VALUE: "
    INT 21H
    MOV BL, AL                            ; seconed value store
    
    PRINTN
    PRINT "ENTER YOUR THIRD VALUE: "   
    INT 21H
    MOV CH, AL                             ; third value store
    

    ADD BH, BL                             ; add functionality
    SUB BH, 30H
    

    SUB BH, CH                             ; subtract functionality
    ADD BH, 30H
    
    
    PRINTN                                 ; new line printer
    PRINT "THE RESULT OF (A+B)-C IS : "
    MOV AH, 2
    MOV DL, BH
    INT 21H
    
    
    MOV AX, 4C00H                          ; return 0
    INT 21H
    
    
    MAIN ENDP                              ;end of program 
    END MAIN                                ; entry point for linker use