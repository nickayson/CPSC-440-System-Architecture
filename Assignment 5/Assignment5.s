# Nicholas Ayson
# Email: nick.ayson@csu.fullerton.edu
#
# Assignment5.s
# Programming Assignment 5
# 

.data
    string : .asciiz "ABCDEFG" #string
.text
    main :

    la $t0,string                   # load first address of string

    toLowerCase:
    lb $t2,0($t0)                   # load character from string
    beqz $t2,end                    # if empty string terminated
    bge $t2,'A',upperCaseTest2      # if character greater than or equal to A to for further test
    j continue #else continue

    upperCaseTest2:                 # now check if chracter is less than or equal to Z
    ble $t2,'Z',isUpperCase         # if both test pass. change to lower case

    continue:                       # increase pointer by one and check for next character
    add $t0,$t0,1
    j toLowerCase

    isUpperCase:                    # if upper case add 32 to character and continue
    addi $t2,$t2,32
    sb $t2,0($t0)
    j continue

    end:                            # if ends print the string
    li $v0,4
    la $a0,string
    syscall


    li $v0,10
    syscall

    # OUTPUT IS IN THE CONSOLE 
    # ABCDEFG