.data
 		msg1: .asciiz "\nInforme um numero: "
		msg2: .asciiz "\n Total de pares: "
		msg3: .asciiz " "

		
.text

#t0 n, t1 contador, t2 print
main:

	li $t0, 0
	li $t1, 1
	li $t2, 2
	
	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall

	add $t0, $v0, 0
	while:
		ble $t1, $t0, do
		j end

	do:
		li $v0, 1
		add $a0, $t2, 0
		syscall
	
		li $v0, 4
		la $a0, msg3
		syscall
	
		add $t2, $t2, 2
		add $t1, $t1, 1
	j while
	
	end: