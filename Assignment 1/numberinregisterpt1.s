# NumberInRegisterPt1.s
# 
# Program to demonstrate addition
        .text
        .globl  main

main:
        ori  $8, $0, 0x3      # put 0x2 into $8
        ori  $9, $0, 0x2      # put 0x2 into $9
        addu $10,$9, $8       # $10 <—— sum

# End of file

# OUTPUT 
# R8  [t0] = 3
# R9  [t1] = 2
# R10 [t2] = 5