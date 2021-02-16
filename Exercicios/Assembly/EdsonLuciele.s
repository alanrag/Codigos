
# 60. Entrar com o número de termos da série (n) e imprimir o valor de H, sendo: H = 1-2*2+1*3-2*4+1*5-2*6+

.data
	msg1:.asciiz"Resultado de H: "
	msg2:.asciiz"Digite o numero de termos da serie: "
 
.text
main: 
# t0 contador, t1 n, t2 total impares, t3 total pares, t4 total geral, t5 resto
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	
	add $t1, $v0, 0
	li $t0, 1  #startei com 1 no laço pra facilitar o for
	li $t2, 0
	li $t3, 0 
	li $t4, 1 
	for:
		ble $t0, $t1, do
		j endfor
		do:
			rem $t5, $t0, 2
			beq $t5, 1, if
			j else
			if:
				add $t2, $t0, -2
				add $t0, $t0, 1
				mul $t4, $t2, $t4
				j endif
			
			else:
				add $t3, $t0, 1
				add $t0, $t0, 1
				mul $t4, $t3, $t4
			endif:
			j for
		endfor:
		
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall