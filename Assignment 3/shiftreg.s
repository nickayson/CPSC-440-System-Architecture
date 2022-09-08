# Nicholas Ayson
# Email: nick.ayson@csu.fullerton.edu
#
# additionv2.s
# Number 2 on Programming Assignment 3
# 
# Program to load any register with 0x1A.  Shift left 2 positions and store result in a different register.
#
        .text
        .globl  main

main:
        ori      $8, $0, 0x1A       # put bit pattern 0x1A into register $8
        sll      $9, $8, 2          # shift left logical by two and store in 9

        li $v0,10     # syscall 10 exit
        syscall       # exit out

# END OF FILE
        
# OUTPUT In registers
# R8  [t0] = 1a
# R9  [t1] = 68