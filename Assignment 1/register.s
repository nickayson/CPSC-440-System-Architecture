# Nicholas Ayson
# Email: nick.ayson@csu.fullerton.edu
#
# NumberInRegisterPt2.s
# Number 4 on Programming Assignment 1
# 
# Program to bitwise OR two patterns

.text
.globl  main

main:
        ori  $8,$0,0x0FA5       # put first pattern into register $8
        ori  $9,$8,0x368F       # or ($8) with second pattern.  Result to $9.

        li $v0,10     # syscall 10 exit
        syscall       # exit out

# End of file
#
# OUTPUT in INT REGS[16] in QTSPIM
#
# R8  [t0] = fa5
# R9  [t1] = 3faf