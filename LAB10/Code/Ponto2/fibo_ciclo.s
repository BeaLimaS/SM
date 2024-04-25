    # Lab 10 - question 2 : fibonacci_cycle
    .data

    .text
    .globl fibonacci_cycle

fibonacci_cycle:
    # C function prototype: int fibonacci_cycle (int n)
    # input parameters: $a0 (n)
    # return parameter: $v0 (fibonacci value)

    # Salva Os Registros
    addi $sp, $sp, -12
    sw $s0, 0($sp)
    sw $s1, 4($sp)
    sw $ra, 8($sp)

    # Inicialização
    li $s0, 0        
    li $s1, 1        
    move $t0, $a0    # Move Parametros

    # Cauculo de Fibonacci
    beq $t0, 0, exit    
    beq $t0, 1, return1   

    loop:
        add $v0, $s0, $s1    # Valor de Fibonacci
        add $s0, $s1, $zero    
        add $s1, $v0, $zero    
        addi $t0, $t0, -1    
        bne $t0, $zero, loop    

    # Retorna O Valor
    move $v0, $s1
    j exit

return1:
    
    li $v0, 1
    j exit

exit:
    
    lw $s0, 0($sp)
    lw $s1, 4($sp)
    lw $ra, 8($sp)
    addi $sp, $sp, 12

    jr $ra    
