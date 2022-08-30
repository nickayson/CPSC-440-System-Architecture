## NumberInRegisterPt2.s
## 
## Program to bitwise OR two patterns 
        .text
        .globl  main

main:
        ori  $8,$0,0x0FA5       # put first pattern into register $8
        ori  $9,$8,0x368F       # or ($8) with second pattern.  Result to $9.

## End of file