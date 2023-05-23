.org 0x0880E724 ; memcpy
    b 0x0880e840 ; memmove
    nop

.definelabel GetAtkBtn,.
    lhu     v0, InputPress(a0)
    andi    v1, v0, 0x1
    beqz    v1, @@CheckTO
    nop
    b       @@End
    li      v0, 0x4 ; Select
@@CheckTO:
    andi    v1, v0, BtnTriangleCircle
    li      a1, BtnTriangleCircle
    bne     v1, a1, @@CheckTriangle
    nop
    b       @@End
    li      v0, 0x3 ; Triangle and Circle
@@CheckTriangle:
    andi    v1, v0, BtnTriangle
    beqz    v1, @@CheckCircle
    nop
    b       @@End
    li      v0, 0x1 ; Triangle
@@CheckCircle:
    andi    v1, v0, BtnCircle
    beqz    v1, @@End
    li      v0, 0x0
    b       @@End ; Was misbehaving without it
    li      v0, 0x2
@@End:
    jr      ra
    nop

.definelabel CheckRollBasic,.
    lw          v1, 0x4A4(a0)
    andi        v0, v1, 0x4000
    beqz        v0, @@End
    li          v1, 0x0
    lh          v1, 0x53A(a0)
    slti        v1, v1, 0x4B
    bnez        v1, @@End
    li          v1, 0x0
    li          v1, 0x1
@@End:
    jr          ra
    nop

.org 0x08854848 ; Pooling rate test
    li      v0, 0x1
    nop
.org 0x08854868
    li      v0, 0x1
    nop