# Lab 9 - question 2 : (max/min functions revisited)

    .data

    .text
    .globl	max
    .globl	min

max:
    # C function prototype: int max (int *table, int n);
    # input parameters: $a0 (table ptr), $a1 (n)
    # return parameter: $v0 (max value)

    # WRITE YOUR CODE HERE
li $t0,0
lw $v0,0($a0)
loop:
	lw $t1,0($a0)
	ble $t1,$v0,skip
	move $v0,$t1
skip:
	addi $a0,$a0,4
	addi $t0,$t0,1
	blt $t0,$a1,loop




                        # $v0 has the max value
    jr	$ra             # jmp to caller


min:
    #C function prototype: int min (int*table, int n)
    #input parameters: $a0 (table ptr), $a1 (n)
    #return parameter: $v0 (min value)

    #WRITE YOUR CODE HERE
li $t0,0
lw $v0,0($a0)
loop2:
	lw $t1,0($a0)
	bge $t1,$v0,skip2
	move $v0,$t1
skip2:
	addi $a0,$a0,4
	addi $t0,$t0,1
	blt $t0,$a1,loop2


                        # $v0 has the min value
    jr	$ra             # jmp to caller
