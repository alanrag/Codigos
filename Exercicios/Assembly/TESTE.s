.data
	msg1:.asciiz" "
	msg2:.asciiz"Digite o numero de termos da série: "
	
.text
main: 
# t0 contador, t1 n, t2 total impares, t3 total pares, t4 total geral, t5 resto
	
	li $t0, 1
	sub $t0, $t0, 2
	mul $t0, $t0, 2
	
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	