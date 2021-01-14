
        .data
x: .quad 20
        .text
        .globl main
main:
mov $1, %rax
mov $0, %rbx
L1:
add $1, %rbx
cmp x, %rbx
je L2
mul %rbx 
jmp L1
L2:
mul %rbx
call finish
