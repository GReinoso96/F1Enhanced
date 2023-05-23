.org 0x09A53740 ; Test Address
.definelabel GetAttackButton,.
    lhu     v0, 0x4A4(a0)
    andi    v1, v0, 0x1
    beqz    v1, @@CheckTO
    nop
    b       @@End
    li      v0, 0x4
@@CheckTO:
    xori    v1, v0, 0x3000
    bnez    v1, @@CheckTriangle
    nop
    b       @@End
    li      v0, 0x3
@@CheckTriangle:
    andi    v1, v0, 0x1000
    beqz    v1, @@CheckCircle
    nop
    b       @@End
    li      v0, 0x1
@@CheckCircle:
    andi    v1, v0, 0x2000
    beqz    v1, @@CheckCircle
    nop
    b       @@End
    li      v0, 0x2
@@End:
    jr      ra
    nop

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
    jal         GetAttackButton
    move        a0, s0
    beqz        v0, 0x098FBB84
    nop
    li          a1, 0x1
    move        a0, s0
    li          v1, 0x1
    beq         v0, v1, @@DoTriangle
    nop
    li          v1, 0x2
    beq         v0, v1, @@DoCircle
    nop
    li          a2, 0x31
    jal         0x098dbe90 ; Pl_act_set
    li          a3, 0x4
    b           0x098FBB84
    nop
@@DoCircle:
    andi        v0, v1, 0x2000
    beqz        v0, 0x098FBB84
    nop
    li          a2, 0x33
    jal         0x098dbe90 ; Pl_act_set
    li          a3, 0x4
    b           0x098FBB84
    nop
@@DoTriangle:
    li          a2, 0x30
    jal         0x098dbe90 ; Pl_act_set
    li          a3, 0x4
    b           0x098FBB84
    nop


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
    andi        v0, v1, 0x1001
    beqz        v0, @@CheckCircle
    li          a1, 0x1
    andi        v0, v1, 0x2001
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

    
.definelabel GetAttackButton,.
    lhu     v0, InputPress(a0)
    andi    v1, v0, 0x1
    beqz    v1, @@CheckTO
    nop
    b       @@End
    li      v0, 0x4
@@CheckTO:
    andi    v1, v0, BtnTriangle
    beqz    v1, @@CheckCircle
    nop
    andi    v1, v0, BtnCircle
    beqz    v1, @@End
    li      v0, 0x1 ; Only Triangle
    b       @@End
    li      v0, 0x3 ; Both
@@CheckCircle:
    andi    v1, v0, BtnCircle
    beqz    v1, @@End
    li      v0, 0x0 ; None
    andi    v1, v0, BtnTriangle
    beqz    v1, @@End
    li      v0, 0x2 ; Only Circle
    b       @@End
    li      v0, 0x3 ; Both
@@End:
    jr      ra
    nop