	# Lab 7: Bitmap display 
	# Bitmap Display settings: unit pixels 4x4, display width, height = 256 x 256
	.data
	
	.text

	# clear display
	jal clear_bitmap_display # set all pixels to black 


	# ESCREVA O SEU CODIGO AQUI	 	
	li $t9, 0x10040000
	addi $t9,$t9,2600
	addi $t2,$t9,2560
	move $t8 ,$t9	
	addi $t7, $t9 ,40
	li $t1, 0x00FF0000
loop2:	sw $t1,0($t9)
	addi $t9,$t9, 4
	blt $t9,$t7,loop2
	add $t9,$t8,256
	addi $t7,$t7,256
	move $t8, $t9
	beq $t9,$t2,endloop2
	j loop2

	# exit
endloop2:li $v0, 10         		# $v0 = 10, system call for exit
	syscall				# exit


	
# print_int(int), $4 = $a0 = integer
print_int:
	li $v0, 1
	syscall
	jr $ra

# void clear_bitmap_display(void) 
# clear bitmap display (set all pixels to black)
clear_bitmap_display:
	li $t9, 0x10040000		# Bitmap Display base address (heap)

	
clr_loop:
	li $t1,255
	sw $t1, 0($t9)		# *( $t9 ) = 0 (write 4 bytes w/ zeros)
	addi $t9, $t9, 4		# $t9 = $t9 + 4 (move forward 4 bytes) 
	blt $t9, 0x10044000, clr_loop 	# if ($t9 < base_adress + 4 * 4096 = 0x10044000) branch to clr_loop
	jr $ra					# jump to caller
