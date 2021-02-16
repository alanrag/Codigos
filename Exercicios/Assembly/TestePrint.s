.data
.text
main:
	#$t0, $t1, $t2
	li $t0, 10
	li $t1, 20
	add $t2, $t1, $t0
	li $v0, 1
	add $a0, $t2, 2
	syscall