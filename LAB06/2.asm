	.data
digits:		.word 	0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F
counter: 	.word	10
	.text
	
main:	
	la $a0, 43 #valor superior
	la $a1, 2#valor inferior
	
	
	# $s1 = display2
	
	la	$a1, digits
	addi	$a1,$a1, 36
	la	$a2, digits
	addi	$a2, $a2, 36
	lw 	$t1, 0($a1)
	lw	$t2, 0($a2)
	
	# contadores por display displays
	addi	$t3, $0, 0
	addi	$t4, $0, 0
	
mostra:	
	andi $t1, $a0, 0X0F
	add $t2, $t1, $s1
	lb $t3, 0($t2)
	sb $t3, 32
	srl $s0, $s0, 4
	jr $ra
	
loop:	
	move $a0, $s0
	jal mostra
	addi $s0, $s0, 1
	ble $s0,  ,loop
	
exit:	li	$v0, 10
	syscall