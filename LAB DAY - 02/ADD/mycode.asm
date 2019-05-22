INCLUDE "EMU8086.INC"                               ; helper file added
.MODEL SMALL                                        ; model decalre
.STACK 100H
.CODE                                               ; code segment start

MAIN PROC
    
    PRINT "ENTER YOUR FIRST VALUE: "                 ; if we declare emu8086 then we can use
    MOV AH, 01H                                      ; new chracter input
    INT 21H                                          ; after new chracter input we have to use
    MOV BH, AL                                       ; value store on BH destination 
    
    
    PRINTN                                           ; new line help with emu8086 helper
    PRINT "ENTER YOUR SECONED VALUE: "
    INT 21H
    MOV BL, AL                                       ; seconed value store on BL
    
    
    ADD BH, BL                                       ; add those (BH + BL)
    SUB BH, 30H                                      ; sub assembler value

    
    PRINTN
    PRINT "THE RESULT IS: "
    
    MOV AH, 2                                        ; instuctions for print
    MOV DL, BH  
    INT 21H                                          ; instruncion end
    
    
 
   MOV AX, 4C00H                                      ; DOS function: Exit program 
   INT 21H                                            ; Call DOS: Terminate program 
 
 
  MAIN ENDP                                           ;end of program 
  END MAIN
    
