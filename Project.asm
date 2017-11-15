.data

output1: .asciiz "Please input a string that contains the characters 0-9, a-z and or A-B. \n \n"
output2: .asciiz "\nYour output in bits is: "
newLine: .asciiz "\n"
userInput: .space 8


.text

main:

	#display instructions
	la $a0, output1
	li $v0, 4
	syscall

	#Get user input as text
	la $a0, userInput
	li $a1, 9
	li $v0, 8
	syscall
	
	#newline
	la $a0, newLine
	li $v0, 4
	syscall
	
	#message
	la $a0, output2
	li $v0, 4
	syscall
	
	#set counter to 0
	ori $t0, $zero, 0
	
	while:
		la $t1, userInput
		add $t1, $t1, $t0
		lb $t1, 0($t1)
		la $a0, 
		li $v0, 11
		syscall
		addi $t0, $t0, 1
		bne $t0, 8, while
		
	#newline
	la $a0, newLine
	li $v0, 4
	syscall	


li $v0, 10
syscall