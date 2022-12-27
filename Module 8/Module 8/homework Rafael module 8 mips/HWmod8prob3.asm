.text 
.globl main
main:

# Specify memory location of Matrix_row1
la $t0, Matrix_row1

# Specify memory location of Matrix_row2
la $t2, Matrix_row2

# Loads contents of Matrix_row1 to registers
lw $t3, 0($t0)
lw $t4, 4($t0)

# Loads contents of Matrix_row2 to registers
lw $t5, 0($t2)
lw $t6, 4($t2)

# multiplies 3 * 4
mul  $t7, $t3, $t6

# multiplies 2 * 1
mul  $t8, $t4, $t5

# performs (3 * 4) - (2 *1)
sub  $t1, $t7, $t8


# prints on command console "The determinant is:  "
li $v0, 4 
la $a0, prompt
syscall

# loads the determinant to $a0
move $a0, $t1
li $v0, 1
syscall

# exits
li $v0, 10
syscall


.data 
Matrix_row1: .word 3, 2

Matrix_row2: .word 1, 4
ArrayC: .space 8
prompt: .asciiz "The determinant is:  "
skip:   .asciiz "\n"