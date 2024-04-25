.data

    .text
    .globl    FindWordsWithChar

FindWordsWithChar:
    li    $t3, 0x20
    li    $v0, 0
    li  $t1, 0

loop:
    lbu    $t0, 0($a0)
    beq    $t0, $0, finish
    bne    $t0, $a1, salta
    addiu  $v0, $v0, 1
    bne	   $t1, $0, salta
    addi   $t1, $t1, 1


salta:
    bne $t0, $t3, A
    li $t1, 0
A:
    addiu     $a0, $a0, 1
    j    loop


finish:
    jr    $ra