#43. Criar um algoritmo que leia um número que será o limite superior de um intervalo e o incremento. Imprimir todos os números naturais no intervalo de 0 até esse número. Suponha que os dois números lidos são maiores do que zero. Exemplo: Limite superior: 20 Incremento: 5 -- Saída: 0 5 10 15 20

#Receber o N, receber S , incrementar S em 0 enquanto S < N, imprimir os numeros naturais incrementados, parar quando o S for maior que N.                     imprimir todos os numeros naturais de 0 até N, incrementando valor S. 


.data
	msg1:.asciiz"  "
	msg2:.asciiz" Escreva o limite:  "
	msg3:.asciiz" Escreva o incremento:  "
	
.text

#t0 = N(limite), t1 = S(incremento), t2 = resultado
main:
	
	li $v0,4
	la $a0, msg2
	syscall
	
	
	li $v0, 5                 
	syscall                    #Recebendo o N
	add $t0, $v0, 0
	
	li $v0,4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall                    #Recebendo o S                               
	add $t1, $v0, 0
	
	add $t2, $t2, 0 	#Começando o t2 em 0
	
	while:
	blt $t2, $t0, faca
	j endwhile
	faca:
	
		li $v0, 1				
		add $a0, $t2, 0		 #printa o t0	
		syscall
		
		li $v0,4
		la $a0, msg1
		syscall
		
		
		add $t2, $t2, $t1
		j while
		
	endwhile:
	li $t2, 0
	
	
	