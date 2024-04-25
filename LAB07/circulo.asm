	# Lab 7: Bitmap display 
	# Bitmap Display settings: unit pixels 4x4, display width, height = 256 x 256
	.data
	
	.text

	# clear display
	jal clear_bitmap_display # set all pixels to black 


	# ESCREVA O SEU CODIGO AQUI	 	
	li $t9, 0x10040000
	
	li $t7, 0 #nlin
	li $t8, 0 #ncol
	li $t5,403 #raio
loop2:	li $t1, 0x00FF0000
	
	subi $t0, $t7,31
	subi $t2, $t8,31
	mul $t4,$t0,$t0#lin
	mul $t3,$t2,$t2	#col

	add $t6,$t3,$t4
	
	
	addi $t8 ,$t8,1
	ble $t5 , $t6,cont
	sw $t1,0($t9)
	
cont:    addi $t9,$t9, 4
	blt $t8,64,loop2
	addi $t7,$t7,1
	li $t8, 0
	beq $t9,0x10050000,endloop2
	
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
