.data
	msg1:.asciiz "\nDigite o valor de A:"
	msg2:.asciiz "Digite o valor de B:"
	msg3:.asciiz "Digite o valor de C:"
	msg4:.asciiz "\nX1 = "
	msg5:.asciiz "    X2 = "
	msg6:.asciiz "Delta: "
	msg7:.asciiz "Nao tem uma raiz exata !"
.text
main:
	#t0 A, t1 B, t2 C, t3 delta, t4 resultado, t5 contador, s1 X1, s2 X2
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	li $v0, 4
	la $a0, msg3

	syscall
	li $v0, 5
	syscall
	add $t2, $v0, 0
		
	#Calculo do delta
	mul $t3, $t1, $t1
	mul $t4, $t0, $t2
	mul $t4, $t4, -4
	add $t3, $t3, $t4
	move $s0, $t3
	
	#Raiz Quadrada
	li $t5, 1
	li $t4, 0
	for:
		sub $t3, $t3, $t5
		add $t5, $t5, 2					#Radicando com subtração sequencial de impares
		add $t4, $t4, 1
		ble $t5, $t3, for
	
	bne $t3, 0, end
	
	li $v0, 4
	la $a0, msg6
	syscall
	
	li $v0, 1
	add $a0, $s0, 0
	syscall
	
	
	
	add $t3, $t4, 0 					#t3 Delta vira a raiz de delta
	
	#Calculo do x1 e x2
	mul $t4, $t1, -1
	mul $t0, $t0, 2                     #t0 A vira 2.A
	
	#X 1
	add $s1, $t4, $t3
	div $s1, $s1, $t0	
	
	#X 2
	mul $t3, $t3, -1
	add $s2, $t4, $t3
	div $s2, $s2, $t0	
	
	#Print X1 e X2
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $s1, 0
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $s2, 0
	syscall
	j exit
	
	end:
		li $v0, 4
		la $a0, msg7              # Raiz não exata
		syscall
	exit:
		