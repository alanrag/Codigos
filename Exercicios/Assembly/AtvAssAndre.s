.data
	msg1:.asciiz "Digite um numero: (O programa vai considerar Enter como 0) "
	msg2:.asciiz " "
	msg3:.asciiz "  Total de numeros Impares: "
	msg4:.asciiz "  Total de numeros Pares: "
.text
main:
li $v0, 4
la $a0, msg1
syscall
li $t2, 0
li $t3, 0
li $t1, 1
enquanto:
ble $t1, 20, do
j fimenquanto
do:
li $v0, 5
syscall
add $t0, $v0, 0
rem $t4, $t0, 2
beq $t4, 1, se
j senao
se :
add $t2, $t2, 1
add $t1, $t1, 1
j fimse
senao:
add $t3, $t3, 1
add $t1, $t1, 1
fimse:
j enquanto
fimenquanto:
li $v0, 4
la $a0, msg4
syscall
li $v0, 1
add $a0, $t3, 0
syscall
li $v0, 4
la $a0, msg2
syscall
li $v0, 4
la $a0, msg3
syscall
li $v0, 1
add $a0, $t2, 0
syscall
	
	