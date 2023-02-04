 ; CODE TO REVERSE A BIT PATTERN

CODE SEGMENT
    ASSUME CS:CODE, DS:CODE
    
    

    MOV AX, 8301H; STORING A RANDOM VALUE AT ACCUMULATOR    
    PUSH AX; PUSHING THE VALUE TO STACK SO WE CAN REUSE IT
    
    XOR BX, BX; ZEROING BX
    
    MOV CL, 16D; TOTAL 16 BITS HAVE TO BE REVERSED
    
    L1: SHR AX, 1; SHIFTING ACCUMULATOR AND TRANSFERING THE SHIFTED OUT BIT TO BX
        
        ADC BX, 0H; BX = BX + OH+ CF
        CMP CX, 1; IF COUNTER REGISTER IS 1, THEN TERMINATE THE LOOP
        JE LAST
        
        SHL BX, 1; LSB OF AX IS TRANSFERRED TO MSB OF BX
        
        LOOP L1
        
        LAST: POP AX; RETRIEVING AX FROM STACK REGISTER TO COMPARE WITH BX AND DECIDE WHETHER IS A 
        ; PALINDROME
        
        CMP AX, BX
        
        JE EQUAL
        MOV DX, 1
        HLT
        
        
        EQUAL:MOV DX, 0
        HLT 
        
        CODE ENDS




END
