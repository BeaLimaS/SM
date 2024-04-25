.data

    .text
    .globl	max
    .globl	min

max:
    # C function prototype: int max (int n1, int n2, int n3, int n4)
    # input parameters: $a0 (n1), $a1 (n2), $a2 (n3), $a3 (n4)
    # return parameter: $v0 (max value)

    # WRITE YOUR CODE HERE
    
func: move $v0,$v0 
	ble $a1,$v0, check
	move $v0,$a1
check:
	ble $a1,$v0, check2
	move $v0,$a1
 check2: 
 	ble $a2,$v0, check3
	move $v0,$a2
check3:
	ble $a3,$v0,check4
	move $v0,$a3
check4:


                        # $v0 already has the max value

                 jr	$ra             # jump to caller



min:
    # C function prototype: int min (int n1, int n2, int n3, int n4)
    # input parameters: $a0 (n1), $a1 (n2), $a2 (n3), $a3 (n4)
    # return parameter: $v0 (min value)


    # WRITE YOUR CODE HERE
 move $v0,$a0 
	bge $a1,$v0, check12
	move $v0,$a1
check12:
	bge $a1,$v0, check22
	move $v0,$a1
 check22: 
 	bge $a2,$v0, check23
	move $v0,$a2
check23:
	bge $a3,$v0,check33
	move $v0,$a3
check33:                    # $v0 already has the min value
    jr	$ra             # jump to caller
