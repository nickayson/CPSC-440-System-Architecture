# Nicholas Ayson
# Email: nick.ayson@csu.fullerton.edu
#
# Average.s
# Programming Assignment 4
# 
# 2.	Write a simple Assembly Language program that has a data section declared as follows:
# .data
      # .byte   12
      # .byte   97
      # .byte  133
      # .byte   82
      # .byte  236
# 3.	Add the values up, compute the average, and store the result in a memory location. 

.data
    .byte 12
    .byte 97
    .byte 133
    .byte 82
    .byte 236

.text
.globl main


main:

# Loading the desired byte value into registers ($t1,$t2, $t3, 
# $t4, $t5). Loads the a base register ($10, $11, $12, $13, $14) 
# with the location of desired byte value from the .data segment

lui $10, 4097
lb $t1, 0($10)
lui $11, 4097
lb $t2, 1($11)
lui $12, 4097
lbu $t3, 2($12)
lui $13, 4097
lb $t4, 3($13)
lui $14, 4097
lbu $t5, 4($14)


add $t6, $t1, $t2   # $t6 = $t1 + $t2 
add $t7, $t3, $t4   # $t7 = $t3 + $t4 
add $t0, $t6, $t7   # $t0 = $t6 + $t7
add $t0, $t0, $t5   # $t0 += $t5

li $s1, 5   # Loads 5 into $s1 to use for division in order to take average

div $t0, $t0, $s1   # divides $t0 / $s1 and loads result into $t0

li $v0, 1   # command for printing an integer
la $a0, ($t0)   # loads the result of the previous addition into $a0 for printing
syscall # executes command

jr $ra  # jump to return address

# End of File
# OUTPUT
# R8  [t0] = 112
# R9  [t1] = 12
# R10 [t2] = 97
# R11 [t3] = 133
# R12 [t4] = 82
# R13 [t5] = 236
# R14 [t6] = 109
# R15 [t7] = 215