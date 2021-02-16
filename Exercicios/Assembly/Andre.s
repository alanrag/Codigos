.data
	msg1:.asciiz "\nDigite um numero: "
	msg2:.asciiz "         "
	msg3:.asciiz "\nE um palindromo!"
	msg4:.asciiz "\nNao e um palindromo!"
	msg5:.asciiz "\nNumero digitado:"
	msg7:.asciiz "O Numero precisa ser maior que 10"
	msg8:.asciiz "O Numero nao pode ser maior do que 100000"

.text
main:
	#t0 n, s0 contador, s1~s6 decimais, t1 resultado
	LoopZero:
		li $v0, 4
		la $a0, msg1
		syscall
		li $v0, 5
		syscall
		add $t0, $v0, 0
	
	#Laço para menor que 0
	blt $t0, 10, MenorDez
	bgt $t0, 100000, MaiorCemMil
	j endloop
	MenorDez: 
		li $v0, 4
		la $a0, msg7
		syscall
		j LoopZero
	MaiorCemMil: 
		li $v0, 4
		la $a0, msg8
		syscall
		j LoopZero
	endloop:
	
	
	li $s0, 0
	li $s1, 0
	li $s2, 0
	li $s3, 0     #Zerando registradores
	li $s4, 0
	li $s5, 0
	li $s6, 0
	
	unidade:	#Numerando as unidades
		beq $s0, $t0, endfor
		add $s0, $s0, 1
		add $s1, $s1, 1
		ble $s1, 9, unidade	
		#Numerando as dezenas
		li $s1, 0
		add $s2, $s2, 1
		ble $s2, 9, unidade
		#Numerando as centenas
		li $s2, 0
		add $s3, $s3, 1
		ble $s3, 9, unidade
		#Numerando os milhares
		li $s3, 0
		add $s4, $s4, 1
		ble $s4, 9, unidade
		#Numerando as dezenas de milhares
		li $s4, 0
		add $s5, $s5, 1
		ble $s5, 9, unidade
		#Numerando as centenas de milhares
		li $s5, 0
		add $s6, $s6, 1
		j unidade
	endfor:
	#Fazendo a inversão
	beq $s6, 0, case1     #Adaptando para entradas menores
	j elsecase
	case1:
		beq $s5, 0, case2
		mul $s4, $s4, 10
		mul $s3, $s3, 100	
		mul $s2, $s2, 1000	
		mul $s1, $s1, 10000
		j endcase
		case2:
			beq $s4, 0, case3
			mul $s3, $s3, 10	
			mul $s2, $s2, 100	
			mul $s1, $s1, 1000
			j endcase
			case3:
				beq $s3, 0, case4
				mul $s2, $s2, 10	
				mul $s1, $s1, 100
				j endcase
				case4:	
					mul $s1, $s1, 10
					j endcase
				
	elsecase:
		mul $s5, $s5, 10
		mul $s4, $s4, 100
		mul $s3, $s3, 1000	
		mul $s2, $s2, 10000	
		mul $s1, $s1, 100000
	endcase:
	
	#Soma casas decimais, pra terminar a inversão
	add $t1, $s6, $s5
	add $t1, $t1, $s4
	add $t1, $t1, $s3
	add $t1, $t1, $s2
	add $t1, $t1, $s1
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $s0, 0
	syscall

	beq $t1, $t0, if           #Condicional, para comparar se é ou não é um polindromo
	j else
	if:
		
		li $v0, 4
		la $a0, msg3
		syscall
		j end
	else:
		li $v0, 4
		la $a0, msg4
		syscall
	end: