.data
	msg1:.asciiz "\n Resultado da soma: "
.text
main:
	#t0 s, t1 resultado1, t2 resultado2, t3 somatorio1, t4 somatorio2, t100 contador, t101 variavelmult1, t102 variavelmult2
	li $t5, 0
	li $t6, 1
	li $t7, 2
#Laço
	do:
		mul $t3, $t6, 3 
		add $t1, $t3, $t1
		mul $t4, $t7, 0 
		add $t2, $t4, $t2
		add $t5, $t5, 1
		add $t6, $t6, 2
		add $t7, $t7, 2
		
		blt $t5, 10, do
	
	add $t0, $t1, $t2	
	#Print
	li $v0, 4
	la $a0, msg1
	syscall
	li $v0, 1
	add $a0, $t0, 0
	syscall