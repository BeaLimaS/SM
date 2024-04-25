	.data
digits:		.word 	0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F
counter: 	.word	10
	.text
	
main:	
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
	
loop:	
	sb	$t1, 0xFFFF0010
	sb	$t2, 0xFFFF0011
	

	addi	$a1, $a1, -4
	
	bne	$t3, 9, L
	beq	$t3, $t4, exit
	addi	$t4, $t4, 1
	addi	$a2, $a2, -4
	lw	$t2, 0($a2)
	addi	$t3, $0, -1
	la	$a1, digits
	addi	$a1 , $a1,36
	
	
		
L:	addi	$t3, $t3, 1
	lw	$t1, 0($a1)
	j	loop

exit:	li	$v0, 10
	syscall
