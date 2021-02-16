.data
	msg1:.asciiz "\n Digite um numero: "
	msg2:.asciiz "\n O maior numero: "
	msg3:.asciiz "\n O menor numero: "
	msg4:.asciiz "\n Digite outro numero ou 0 para encerrar: "
.text
main:
	#t0 n, t1 maior, t2 menor
	LoopZero:
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	
	#Atribuir o primeiro valor como maior e menor
	add $t0, $v0, 0
	add $t1, $t0, 0
	add $t2, $t0, 0
	beq $t0, 0, LoopZero
	#Inicio do laço
	for:
		li $v0, 4
		la $a0, msg4
		syscall
		li $v0, 5
		syscall
		add $t0, $v0, 0
		bge $t0, $t1, if
		ble $t0, $t1, elif
		if:
			add $t1, $t0, 0
			beq $t0, 0, endif
			j for
		elif:
			add $t2, $t0, 0
			beq $t0, 0, endif
			j for
		endif:
	
	#Numero maior
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	#Numero menor
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	
		
