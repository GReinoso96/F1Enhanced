.org Manage_Lazy_Buffer
    lhu     v1, InputPress(a0)
    andi    a1, v1, BtnTriangleCircle
    li      a2, BtnTriangleCircle
    bne     a1, a2, @@CheckTriangle
    nop
    li      v1, 0x3
    b       @@End
    sw      v1, 0x1100(a0)
@@CheckTriangle:
    andi    a1, v1, BtnTriangle
    beqz    a1, @@CheckCircle
    nop
    li      v1, 0x2
    b       @@End
    sw      v1, 0x1100(a0)
@@CheckCircle:
    andi    a1, v1, BtnCircle
    beqz    a1, @@Clear
    nop
    li      v1, 0x1
    b       @@End
    sw      v1, 0x1100(a0)
@@Clear:
    li      v1, 0x0
    sw      v1, 0x1100(a0)
@@End:
    jr      ra
    nop