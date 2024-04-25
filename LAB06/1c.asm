	.data
digits:		.word 	0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71
counter: 	.word	16
	.text
	
main:	
	addi	$s0, $0, 0xFFFF0010	# $s0 = display1
	addi	$s1, $0, 0xFFFF0011	# $s1 = display2
	
	la	$a1, digits
	la	$a2, digits
	lw	$t1, 0($a1)
	lw	$t2, 0($a2)
	
	# contadores por display displays
	addi	$t3, $0, 0
	addi	$t4, $0, 0
	
loop:	
	sb	$t1, 0($s0)
	sb	$t2, 0($s1)
	
	addi	$a1, $a1, 4
	
	bne	$t3, 15, L
	beq	$t3, $t4, exit
	addi	$t4, $t4, 1
	addi	$a2, $a2, 4
	lw	$t2, 0($a2)
	addi	$t3, $0, -1
	la	$a1, digits
	
L:	addi	$t3, $t3, 1
	lw	$t1, 0($a1)
	j	loop

exit:	addi	$v0, $0, 10
	syscall
