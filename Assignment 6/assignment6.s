# Nicholas Ayson
# Email: nick.ayson@csu.fullerton.edu
#
# Assignment6.s
# Programming Assignment 6
# 

.data
    prompt: .asciiz "\nEnter Scale : "
    prompt1: .asciiz "\nEnter Temperature: "
    prompt2: .asciiz "\nCelsius Temperature:"
    prompt3: .asciiz "\nFahrenheit Temperature: "
    done: .asciiz "\ndone"
.text
    main:
    loop:
        li $v0,4
        la $a0,prompt   # it will print prompt
        syscall
        li $v0, 12
        syscall
        move $t1,$v0

        beq $t1,'q',exit
        beq $t1,'Q',exit

        li $v0,4
        la $a0,prompt1  # it will print prompt
        syscall
        li $v0,5
        syscall         # ask user input
        move $s1,$v0 #store temperature

        beq $t1,'f',if
        beq $t1,'F',if
        beq $t1,'c',else
        beq $t1,'C',else

    if:
        sub $s2,$s1,32
        mul $s2,$s2,5
        div $s2,$s2,9
        li $v0,4
        la $a0,prompt2  # it will print prompt
        syscall
        move $a0,$s2
        li $v0,1
        syscall
        j loop

    else:
        mul $s2,$s1,9
        div $s2,$s2,5
        add $s2,$s2,32
        li $v0,4
        la $a0,prompt3  # it will print prompt
        syscall
        move $a0,$s2
        li $v0,1
        syscall
        j loop

    exit:
        li $v0,4
        la $a0,done     # it will print prompt
        syscall