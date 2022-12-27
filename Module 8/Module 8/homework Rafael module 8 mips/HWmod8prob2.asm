.text 
.globl main
main:

# Specify memory location of ArrayA
la $t0, ArrayA

# Specify memory location of ArrayB
la $t1, ArrayB

# Specify memory location of Arrayc
la $t2, ArrayC

# Loads contents of ArrayA to registers
lw $t3, 0($t0)
lw $t4, 4($t0)

# Loads contents of ArrayB to registers
lw $t5, 0($t1)
lw $t6, 4($t1)

# Adds first element of each array together
add $t7, $t3, $t5

# Adds second element of each array together
add $t8, $t4, $t6

# Store the result of the first element addition to the first element of ArrayC
sw $t7, 0($t2) 

# Store the result of the second element addition to the second element of ArrayC
sw $t8, 4($t2) 

# prints on command console "The elements of ArrayC are:"
li $v0, 4 
la $a0, prompt
syscall

# loads the result of the first element onto $a0
lw $a0, 0($t2)
li $v0, 1
syscall

# prints a newline
li $v0, 4 
la $a0, skip
syscall

# loads the result of the second element onto $a0
li $v0, 1
lw $a0, 4($t2)
syscall

# exits
li $v0, 10
syscall


.data 
ArrayA: .word 1, 2
ArrayB: .word 3, 4
ArrayC: .space 8
prompt: .asciiz "The elements of ArrayC are:\n"
skip:   .asciiz "\n"