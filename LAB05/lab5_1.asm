	.data
msg: .asciiz "Introduza um numero n"
msg2: .asciiz"O numero introduzaido:"
separador: .asciiz", "
      	 	        	
	.text

main:
	## ESCREVA O SEU CODIGO AQUI

	la $a0, msg
	jal print_string
	
	li $a0, 0x0A
	jal print_char
	jal read_int
	addi $t0, $v0, 1
	sll $t1, $v0, 1
	
loop:	
	move $a0, $t0
	jal print_int
	
	li $a0, '\n'
	jal print_char
	
	addi $t0, $t0, 1
	blt $t0,$t1, loop
						
finish:
        li      $v0, 10         # Exit the program
        syscall



# funcoes com chamadas ao sistema para imprimir inteiros, caracteres e strings
# (o argumento de entrada e' colocado em $a0 antes da chamada da funcao)

# print_int(int), $4 = $a0 = integer
read_int:
		li $v0,5
		syscall
		jr $ra
print_int:
		li $v0,1
		syscall
		jr $ra
		
		
# print_char(char), $4 = $a0 = char
print_char:
		li $v0,11
		syscall
		jr $ra

		
# print_string(char *), $4 = $a0 = string
print_string:
		li $v0,4  
		syscall
		jr $ra

