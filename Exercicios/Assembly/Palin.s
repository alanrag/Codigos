.data
input: .asciiz		"racecar"
input_len: .word	7	

.text
main:
	la	$a0, input_len	# Load data
	lw	$a0, 0($a0)
	la	$a1, input
	jal 	isPalindrome	# Do the Palindrome check
	add	$a0, $v0, $zero
	addi	$v0, $zero, 10
	syscall			# Exit


isPalindrome:
	# Check base case
	slti	$t0, $a0, 2
	bne	$t0, $zero, returnTrue

	# Make sure first and last are equal
	lb	$t0, 0($a1)
	addi	$t1, $a0, -1
	add	$t1, $t1, $a1
	lb	$t1, 0($t1)
	bne	$t0, $t1, returnFalse
	
	# Shift pointer, length, recurse
	addi	$a0, $a0, -2
	addi	$a1, $a1, 1
	j	isPalindrome
	
returnFalse:
	addi	$v0, $zero, 0
	jr	$ra


returnTrue:
	addi	$v0, $zero, 1
	jr	$ra