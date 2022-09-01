# Nicholas Ayson
# Email: nick.ayson@csu.fullerton.edu
#
# additionv2.s
# Number 2 on Programming Assignment 2
# 
# Program to demonstrate two's complement negative
#
# The program adds +146 to -82, leaving the result in $10

        .text
        .globl  main

main:
        ori      $7, $0, 146        # put +146 into $7
        ori      $8, $0,  82        # put 82 into $8
        nor      $8, $8,  $0        # reflect
        ori      $9, $0,   1        # 
        addu     $8, $8,  $9        # add 1: $8 = -82
        addu    $10, $7,  $8        # +146 + -82 result is in $10

        li $v0,10     # syscall 10 exit
        syscall       # exit out

# End of file
# OUTPUT
# R7  [a3] = 92
# R8  [t0] = ffffffae
# R9  [t1] = 1
# R10 [t2] = 40             R10 is in hex which is 0x40 == 64