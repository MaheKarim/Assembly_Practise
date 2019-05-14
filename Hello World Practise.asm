        .MODEL SMALL
        .STACK 200H    
        .DATA
        
        ;BASIC STRUCTURE 
        
        .CODE      ;CODE SEGMENT START
                                            
         MAIN PROC
            ;LIKE C PROGRAMMING MAIN FUNCTION                                   
                                            
                                            
            ;STATEMENT START HERE
         
         MOV AH, 4CH
         INT 21H
         
         
         
        
        MAIN ENDP
        
        
        END MAIN ;EXIT(0)
        
        