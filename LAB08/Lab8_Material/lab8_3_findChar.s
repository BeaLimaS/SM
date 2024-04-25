.data


    .text
    .globl    FindChar

FindChar:
    li    $t3, 0x20
    li    $v0, 0
loop:
    lbu    $t0, 0($a0)
    beq    $t0, $0, finish
    bne    $t0, $a1, salta
    addiu    $v0, $v0, 1

salta:
    addiu     $a0, $a0, 1
    j    loop

finish:
    jr    $ra
