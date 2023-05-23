.org 0x098e8fdc ; SnS Combo
    lw          a0, 0x4A4(s1)
    andi        v1, a0, 0x3000
    beqz        v1, @@End
    nop
@@CheckTriangle:
    andi        v1, a0, 0x1000
    beqz        v1, @@DoCircle
    li          v0, 0x2
    li          v0, 0x1
@@DoCircle:
    sb          v0, 0x1F6(s1)
@@End:
    nop

.org 0x098e9af4 ; SnS Uppercut
    lw          a0, 0x4A4(s0)
    andi        v1, a0, 0x3000
    beqz        v1, @@End
    nop
@@CheckTriangle:
    andi        v1, a0, 0x1000
    beqz        v1, @@DoCircle
    li          v0, 0x2
    li          v0, 0x1
@@DoCircle:
    sb          v0, 0x1F6(s0)
@@End:
    nop

.org 0x098e9410 ; SnS Lunge
    lw          a0, 0x4A4(s0)
    andi        v1, a0, 0x1000
    beqz        v1, 0x098e9428