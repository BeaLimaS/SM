	.file	1 "fiborecursivo.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 1
	.abicalls
	.option	pic0
	.text
	.align	2
	.globl	fibonacci_recursive
	.set	nomips16
	.ent	fibonacci_recursive
	.type	fibonacci_recursive, @function
fibonacci_recursive:
	.frame	$fp,40,$31		# vars= 0, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	sw	$16,28($sp)
	move	$fp,$sp
	sw	$4,40($fp)
	lw	$2,40($fp)
	slt	$2,$2,2
	beq	$2,$0,$L2
	nop

	lw	$2,40($fp)
	j	$L3
	nop

$L2:
	lw	$2,40($fp)
	addiu	$2,$2,-1
	move	$4,$2
	jal	fibonacci_recursive
	nop

	move	$16,$2
	lw	$2,40($fp)
	addiu	$2,$2,-2
	move	$4,$2
	jal	fibonacci_recursive
	nop

	addu	$2,$16,$2
$L3:
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	fibonacci_recursive
	.size	fibonacci_recursive, .-fibonacci_recursive
	.ident	"GCC: (Debian 4.6.3-14) 4.6.3"
