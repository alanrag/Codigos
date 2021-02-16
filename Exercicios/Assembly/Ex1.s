.data
.text
main:
	#Algoritmo exemplo 1
	#$t1 - variavel a
	#$t2 - variavel b
	#$t0 - variavel resultado
	
	#a <- 10
	li $t1, 10
	#a <- 10
	li $t2, 2
	
	#opcode res, op1, op2
	#resultado <- a + b
	
	add $t0,$t1, $t2