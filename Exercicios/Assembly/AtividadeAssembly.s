.data
	msg1:.asciiz "\n Digite um numero: "
	msg2:.asciiz " "
.text
main:
	#t0 n, t1 contador
	LoopZero:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	
	add $t0, $v0, 0
	beq $t0, 0, LoopZero
	li $t1, 1  #Iniciando contador em 1 para facilitar *PS. USAR LI E NÃO ADD, SE USAR ADD ELE NÃO RESETA A VARIAVEL E O PROGRAMA NÃO RODA 2 VEZES.
	while: #Enquanto N for maior que CONTADOR faça
	bgt $t0, $t1, do
	j endwhile
	do: #Mostrar contador
		li $v0, 1
		add $a0, $t1, 0
		syscall
		#Espaço entre os numeros
		li $v0, 4
		la $a0, msg2
		syscall
		#Somar 2 ao contador, para sempre manter em impar 
		add $t1, $t1, 2
		j while
	endwhile:
		
	
	
		
