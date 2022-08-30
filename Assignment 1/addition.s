# addition.s
#
# Print out "addition of 2 numbers: 3 and 2 "

.data
# Message to print out
msg: .asciiz "The result of addition is: "


.text
.globl main
main:   li $t0,3        # $t0 contains 3
        li $t1,2        # $t1 contains 3

        add $t3,$t0,$t1         # t3 = t0 + t1

        li $v0,4        # syscall 4 (print_str)
        la $a0,msg      # argument: string
        syscall         # print the string

        li $v0,1        # syscall 1 (print_int)
        move $a0,$t3    # argument: integer
        syscall         # print the integer

        li $v0,10       # syscall 10 exit
        syscall         # exit out