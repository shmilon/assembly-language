	
MOV CL,50
MOV AX,0
MOV BX,2

L1: ADD AX,BX
    ADD BX,2
LOOP L1
HLT