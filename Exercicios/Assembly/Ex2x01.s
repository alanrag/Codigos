.data
	msg1:.asciiz "\n Digite a distancia inicial: "
	msg2:.asciiz "\n Digite a velocidade inicial: "
	msg3:.asciiz "\n Digite o tempo de deslocamento: "
	msg4:.asciiz "\n Digite a aceleracao: "
	msg5:.asciiz "\n Distancia final: "
.text
main:
	#t0 s, t1 S0, t2 V0, t3 t, t4 a, t100 contador
	#Distancia inicial
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	#Velocidade inicial
	li $v0, 4
	la $a0, msg2
	syscall
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	#Tempo de deslocamento
	li $v0, 4
	la $a0, msg3
	syscall
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	#Aceleração
	li $v0, 4
	la $a0, msg4
	syscall
	li $v0, 5
	syscall
	add $t4, $v0, 0	

	#Conta
	mul $t2, $t2, $t3
	mul $t3, $t3, $t3
	mul $t3, $t4, $t3
	div $t3, $t3, 2
	add $t1, $t1, $t2
	add $t0, $t1, $t3
	
	#Print
	li $v0, 4
	la $a0, msg5
	syscall
	li $v0, 1
	add $a0, $t0, 0
	syscall