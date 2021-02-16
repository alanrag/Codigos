.data 
    msg1:.asciiz"\nDigite um numero inteiro: "
    msg2:.asciiz"\nSoma dos positivos: "
    msg3:.asciiz"\nTotal de negativos: "
	msg4:.asciiz"    "
.text


# t0 contador, t1 n, t2 soma positivos, t3 quantidade de negativos
main:




        #escreval(msg1)
    li $v0, 4
    la $a0, msg1
    syscall

        #leia(num($t1))

    
	
	li $t0, 1
	li $t2, 0
	li $t3, 0
	
	for:
		ble $t0, 20, do
		j endfor
		do:
			li $v0, 5
			syscall
			add $t1, $v0, 0
			
			bge $t1, 0, if
			j else
		if:
			add $t2, $t1, $t2
			add $t0, $t0, 1
			j endif
		else:
			add $t3, $t3, 1
			add $t0, $t0, 1
		endif:
	
	
	
	j for
	endfor:
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	
	