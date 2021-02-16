.data
msg1:.asciiz"\n Digite um numero inteiro:"
.text
main:

#i ($t0)
li $t0, 1

#Escreval (Digite um numero inteiro)
li $v0,4
la $a0, msg1
syscall

#Leia

li $v0, 5
syscall
add $t1, $v0, 0

enquanto:
#Se
rem $t2, $t0, 2 
beq $t2, 1, entao
ble $t0, $t1 

entao:

#Escreval
add $t0, $t0, 1 enquanto
syscall
