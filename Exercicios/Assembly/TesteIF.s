.data
	msg1:.asciiz "\n Digite um numero: "
	msg2:.asciiz "\n Par"
	msg3:.asciiz "\n Impar"
.text
main:
	#$t0 resultado, $t1 numero 1
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	rem $t0, $t1, 2

	beq $t0, 0, if
	j else
if:
	li $v0, 4
	la $a0, msg2
	syscall
	j endif
else:
	li $v0, 4
	la $a0, msg3
	syscall
endif: