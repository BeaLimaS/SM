	.data
digits:		.word 	0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71
counter: 	.word	16
	.text
main: 

	# ESCREVA O SEU CODIGO AQUI
	addi 	$s0, $0, 0xFFFF0010
	
	la	$a1, digits
	lw	$t1, 0($a1)
	
	addi	$t3, $0, 0
	
loop:
	sb	$t1, 0($s0)
	addi	$a1, $a1, 4
	bne	$t3, 15, L
	
	beq	$t3, $t3, exit
	addi	$t3, $0, -1
	la	$a1, digits

L:
	addi	$t3, $t3, 1
	lw	$t1, 0($a1)
	j	loop
	
	
	# exit 
exit:
	li $v0, 10		# set $v0 = 10, syscall code to exit
	syscall 
