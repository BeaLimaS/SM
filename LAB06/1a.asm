main:
	la 	$t0, 0xFFFF0010
	li	$t1, 0x01

loop:
	sb	$t1, 0($t0)
	sll	$t1, $t1, 1
	beq 	$t1, 0x100, finish
	j	loop

finish:
	li 	$v0, 10
	syscall