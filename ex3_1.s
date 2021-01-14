       .data
x: .quad 0x0123456789abcdef
        .text
        .globl main
main:
mov $0,%rax
mov $0,%r8


.L1:
mov x,%rbx
mov $0,%r9


.L2:
cmp %r9,%r8
jz .L3
shl $1,%rbx
add $1,%r9
jmp .L2


.L3:
shr $63,%rbx
mov $0,%r9
jmp .L4


.L4:
cmp %r9,%r8
jz .L5
shl $1,%rbx
add $1,%r9
jmp .L4


.L5:
add %rbx,%rax
cmp $63,%r8
jz .L6
add $1,%r8
jmp .L1


.L6:
call finish
