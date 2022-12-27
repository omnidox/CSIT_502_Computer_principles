.data 
Array: .space 16


.text
.globl main
main:
# Specify memory location using: [ la ]
la $t0, Array

#  Load immediate integer-1 to register: [ $t1 ]
li $t1, 1

#  Load immediate integer-2 to register: [ $t2 ]
li $t2, 2 

#  Load immediate integer-3 to register: [ $t3 ]
li $t3, 3 

#  Store integer–1 to Memory
sw $t1, 0($t0) 

#  Store integer–2 to Memory
sw $t2, 4($t0) 

#  Store integer–3 to Memory
sw $t3, 8($t0) 

# Load integer–1 from memory to Register: [ $t4 ]
lw $t4, 0($t0) 

# Load integer–2 from memory to Register: [ $t5 ]
lw $t5, 4($t0) 

# Load integer–3 from memory to Register: [ $t6 ]
lw $t6, 8($t0) 

#add: integer-1 + integer-2 + integer-3: [ $t7 ]
add $t7, $t4, $t5
add $t7, $t7, $t6

# Store the result of the addition again to memory
sw $t7, 12($t0) 

# Load the result of the addition to register: [ $t8 ]....(DONE)
lw $t8, 12($t0) 

# Exit
li $v0, 10 
syscall






