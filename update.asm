  .text
    updateFunction:
    li $t4 , 1

    U1_Cond:
      beq $a0 , $t4 , U1
      addi $t4 , 1
      j U2_Cond

    U2_Cond:
      beq $a0 , $t4 , U2
      addi $t4 , 1
      j U3_Cond

    U3_Cond:
      beq $a0 , $t4 , U3
      addi $t4 , 1
      j U4_Cond

    U4_Cond:
      beq $a0 , $t4 , U4
      addi $t4 , 1
      j U5_Cond

    U5_Cond:
      beq $a0 , $t4 , U5
      addi $t4 , 1
      j Ugaren

    li $t4 , 5

    U1:
      move $a2 , $a1
      j searchFunction
      bgtz $v1 , replaceQ1
      li $v1 , -1
      j garen
    replaceQ1:
      sw $a3 , ($t1)
      j garen

    U2:
      move $a2 , $a1
      j searchFunction
      bgtz $v1 , replaceQ2
      li $v1 , -1
      j garen
    replaceQ2:
      sw $a3 , ($t1)
      j garen

    U3:
      move $a2 , $a1
      j searchFunction
      bgtz $v1 , replaceQ3
      li $v1 , -1
      j garen
    replaceQ3:
      sw $a3 , ($t1)
      j garen

    U4:
      move $a2 , $a1
      j searchFunction
      bgtz $v1 , replaceQ4
      li $v1 , -1
      j garen
    replaceQ4:
      sw $a3 , ($t1)
      j garen

    U5:
      move $a2 , $a1
      j searchFunction
      bgtz $v1 , replaceQ5
      li $v1 , -1
      j garen
    replaceQ5:
      sw $a3 , ($t1)
      j garen

    Ugaren:
end:
