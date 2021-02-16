.data
	msg1:.asciiz"\n "
	
.text
main: 
	#Este exercício tem como objetivo mostrar ao usuário um conjunto de números inteiros que ocorre no intervalo aberto entre 10 e 100"

	#Inicializando a posição de memória
	li, $t0, 11 		#atribui-se o valor 11 ao contador (a = t0 = 11)
	
	#Estrutura de laço
	Enquanto:
	blt $t0, 100, if	# a < 100	

	#haverá uma exibição do valor de t0 e, posteriormente, os acréscimos sofridos pelo contador
		
	add $a0, $t0, 0			#há a transferência do valor de t0 para a0
	li $v0, 1			#impressão do valor de a0
	syscall
	rem $t1, $t0, 10		# t1 = t0 % 10 (cálculo do resto entre o contador e 10, se ele for 0, haverá outra adição para a continuidade do ex)
	beq $t1, 0, if		# branch if equals	
j else
if:
	add $t0, $t0, 1       #caso for multiplo de 10 só adiciona 1 no contador
	j endif

else:
	li $v0, 1				
	add $a0, $t0, 0		 #printa o t0	
	add $t0, $t0, 1	     #add 1 no contador
	syscall
endif: 
	
	li $v0, 4
	la, $a0, msg1
	syscall
	li $v0, 1					#Chama o resultado do contador ($t0) em valor inteiro
	add $a0, $t0, 0				#Copia e mostra o valor alocado na memoria (de $t0 para $a0)
	syscall
endwhile: