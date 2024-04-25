    # Lab 9 - question 3 : max / min functions (w/ routine calls: max2, min2)
    .data

    .text
    .globl	max
    .globl	min

max:
    # C function prototype: int max (int n1, int n2, int n3, int n4)
    # input parameters: $a0 (n1), $a1 (n2), $a2 (n3), $a3 (n4)
    # return parameter: $v0 (max value)

    # WRITE YOUR CODE HERE

                        # $v0 has the max value
    jr	$ra             # jmp to caller


# Compute the max bewteen two integers
# C function prototype: int max2 (int a, int b)
# input parameters: $a0 (a), $a1 (b)
# return parameter: $v0 (max value)
max2:

    # WRITE YOUR CODE HERE

    jr	$ra             # jmp to caller



# -----------------------------------------------------------------------------
min:
    # C function prototype: int min (int n1, int n2, int n3, int n4)
    # input parameters: $a0 (n1), $a1 (n2), $a2 (n3), $a3 (n4)
    # return parameter: $v0 (min value)

    # WRITE YOUR CODE HERE

                        # $v0 has the min value
    jr	$ra             # jmp to caller


# Compute the min bewteen two integers
# C function prototype: int min2 (int a, int b)
# input parameters: $a0 (a), $a1 (b)
# return parameter: $v0 (min value)
min2:

    # WRITE YOUR CODE HERE

    jr	$ra             # jmp to caller
