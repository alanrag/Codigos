.data
	msg1:.asciiz "\nDigite um numero: "
	msg2:.asciiz "Quadrado: "
	msg3:.asciiz "Cubo: "
.text
main:
	#t0 n, t1 resultados, t2 resto
	
	while:
		li $v0, 4
		la $a0, msg1
		syscall
	
		li $v0, 5
		syscall
		
		add $t0, $v0, 0
		bge $t0, 0, then
		j whend
		then:
			rem $t2, $t0, 2
			beq $t2, 0, if
			j else
			if:
				mul $t1, $t0, $t0
				
				li $v0, 4
				la $a0, msg2
				syscall
				
				li $v0, 1
				add $a0, $t1, 0
				syscall
				
				j endif
			else:
				mul $t1, $t0, $t0
				mul $t1, $t1, $t0
				
				li $v0, 4
				la $a0, msg3
				syscall
				
				li $v0, 1
				add $a0, $t1, 0
				syscall
				add $a0, $t0, 0
		endif:
		j while
		whend: