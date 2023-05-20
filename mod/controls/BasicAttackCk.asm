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

.org 0x098fb6c8 ; SnS Basic Ck Case
    lw          v1, 0x4A4(s0)
    andi        v0, v1, 0x4000
    beqz        v0, @@CheckAttacks
    move        a0, s0
    lh          v1, 0x53A(s0)
    slti        v1, v1, 0x4B
    bnez        v1, @@CheckAttacks
    nop
    move        a0, s0
    li          a1, 0x0
    li          a2, 0x1C
    jal         0x098dbe90 ; Pl_act_set
    li          a3, 0x4
@@CheckAttacks:
    andi        v0, v1, 0x1000
    beqz        v0, @@CheckCircle
    li          a1, 0x1
    andi        v0, v1, 0x2000
    beqz        v0, @@OnlyTriangle
    li          a1, 0x1
    li          a1, 0x1
    li          a2, 0x31
    jal         0x098dbe90 ; Pl_act_set
    li          a3, 0x4
    b           0x098FBB84
    nop
@@CheckCircle:
    andi        v0, v1, 0x2000
    beqz        v0, 0x098FBB84
    nop
    li          a2, 0x33
    jal         0x098dbe90 ; Pl_act_set
    li          a3, 0x4
    b           0x098FBB84
    nop
@@OnlyTriangle:
    li          a2, 0x30
    jal         0x098dbe90 ; Pl_act_set
    li          a3, 0x4
    b           0x098FBB84
    nop