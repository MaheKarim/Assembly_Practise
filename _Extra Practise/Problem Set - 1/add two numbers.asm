INCLUDE "EMU8086.INC"

.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC

     PRINT "ENTER YOUR 1st NUMBER: "
     MOV AH,1
     INT 21H
     MOV BL, AL
     
     PRINTN
     PRINT "ENTER YOUR 2nd NUMBER: "
     MOV AH,1
     INT 21H
     MOV CL, AL

     ADD BL, CL
     SUB BL, 48
             
             
             
     PRINTN
     PRINT "RESULT IS: "
     MOV AH,2 
     MOV DL,BL
     INT 21H
     
     PRINTN
     PRINT "THANK YOU!"


     MAIN ENDP
     END MAIN

