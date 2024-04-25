.data

    .text
    .globl    par_ou_impar

par_ou_impar:
    li    $t0, 0x1
    and     $t0, $a0, $t0
    beq    $t0, 0, par
    j    impar

par:
    li    $v0, 1
    j     finish


impar:
    li    $v0, 0

finish:
    jr    $ra