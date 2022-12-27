.text 
.globl main
main:

# Specify memory location of Matrix_1
la $s0, Matrix_1

# Specify memory location of Matrix_2
la $s1, Matrix_2

# Loads contents of Matrix_1 to registers
lw $s2, 0($s0)#7
lw $s3, 4($s0)#6
lw $s4, 8($s0)#8
lw $s5, 12($s0)#9

# Loads contents of Matrix_2 to registers
lw $t5, 0($s1)#3
lw $t6, 4($s1)#2
lw $t7, 8($s1)#1
lw $t8, 12($s1)#4

# 7 + 3
add  $t1, $s2, $t5

# 6 + 2
add  $t2, $s3, $t6

#  8 + 1
add  $t3, $s4, $t7

#  9 + 4
add  $t4, $s5, $t8


# prints on command console "See the new array below:  "
li $v0, 4 
la $a0, prompt
syscall

# implements newline
li $v0, 4 
la $a0, skip
syscall

# loads the first element of the first row of the array to console
move $a0, $t1
li $v0, 1
syscall

# implements space
li $v0, 4 
la $a0, gap
syscall

# loads the second element of the first row of the array to console
move $a0, $t2
li $v0, 1
syscall

# implements newline
li $v0, 4 
la $a0, skip
syscall

# loads the first element of the second row of the array to console
move $a0, $t3
li $v0, 1
syscall

# implements space
li $v0, 4 
la $a0, gap
syscall

# loads the second element of the second row of the array to console
move $a0, $t4
li $v0, 1
syscall

# exits
li $v0, 10
syscall


.data 
Matrix_1: .word 7, 6, 8, 9

Matrix_2: .word 3, 2, 1, 4
ArrayC: .space 8
prompt: .asciiz "See the new array below:\n  "
skip:   .asciiz "\n"
gap:	.asciiz " " 