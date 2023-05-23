.org 0x098fb6c8 ; SnS Basic Ck Case
.definelabel @CaseSnS,.
    jal         CheckRollBasic
    move        a0, s0
    beqz        v1, @@CheckAttacks
    nop
    move        a0, s0
    li          a1, 0x0
    li          a2, 0x1C
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a3, 0x4
@@CheckAttacks:
    jal         GetAtkBtn
    move        a0, s0
    beqz        v0, @End
    nop
    li          a1, 0x1
    move        a0, s0
    li          v1, 0x1
    beq         v0, v1, @@DoTriangle
    nop
    li          v1, 0x2
    beq         v0, v1, @@DoCircle
    nop
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x31
    b           @End
    nop
@@DoCircle:
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x33
    b           @End
    nop
@@DoTriangle:
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x30
    b           @End
    nop
.definelabel @CaseDB,.
    jal         CheckRollBasic
    move        a0, s0
    beqz        v1, @@CheckAttacks
    nop
    move        a0, s0
    li          a1, 0x0
    li          a2, 0x1C
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a3, 0x4
@@CheckAttacks:
    jal         GetAtkBtn
    move        a0, s0
    beqz        v0, @End
    nop
    move        a0, s0
    li          v1, 0x1
    beq         v0, v1, @@DoTriangle
    nop
    li          v1, 0x2
    beq         v0, v1, @@DoCircle
    nop
    li          a1, 0x2
    jal         0x098fbb98 ; Set DB Attack
    li          a2, 0x0
    b           @End
    nop
@@DoCircle:
    li          a1, 0x0
    jal         0x098fbb98 ; Set DB Attack
    li          a2, 0x0
    b           @End
    nop
@@DoTriangle:
    li          a1, 0x1
    li          a2, 0x55
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a3, 0x4
    b           @End
    nop
.definelabel @CaseGS,.
    jal         CheckRollBasic
    move        a0, s0
    beqz        v1, @@CheckAttacks
    nop
    move        a0, s0
    li          a1, 0x0
    li          a2, 0x1C
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a3, 0x4
@@CheckAttacks:
    jal         GetAtkBtn
    move        a0, s0
    beqz        v0, @End
    nop
    li          a1, 0x1
    move        a0, s0
    li          v1, 0x4
    beq         v0, v1, @@DoSelect
    nop
    li          v1, 0x1
    beq         v0, v1, @@DoTriangle
    nop
    li          v1, 0x2
    beq         v0, v1, @@DoCircle
    nop
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x1
    b           @End
    nop
@@DoSelect:
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0xE
    b           @End
    nop
@@DoCircle:
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x0
    b           @End
    nop
@@DoTriangle:
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x4
    b           @End
    nop
.definelabel @CaseLance,.
    jal         CheckRollBasic
    move        a0, s0
    beqz        v1, @@CheckAttacks
    nop
    move        a0, s0
    li          a1, 0x0
    li          a2, 0x6D
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a3, 0x4
@@CheckAttacks:
    jal         GetAtkBtn
    move        a0, s0
    beqz        v0, @End
    nop
    li          a3, 0xC
    li          a1, 0x1
    move        a0, s0
    li          v1, 0x1
    beq         v0, v1, @@DoTriangle
    nop
    li          v1, 0x2
    beq         v0, v1, @@DoCircle
    nop
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x22
    b           @End
    nop
@@DoCircle:
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x2D
    b           @End
    nop
@@DoTriangle:
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x24
    b           @End
    nop
.definelabel @CaseHammer,.
    jal         CheckRollBasic
    move        a0, s0
    beqz        v1, @@CheckAttacks
    nop
    move        a0, s0
    li          a1, 0x0
    li          a2, 0x1C
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a3, 0x4
@@CheckAttacks:
    jal         GetAtkBtn
    move        a0, s0
    beqz        v0, @End
    nop
    li          a1, 0x1
    move        a0, s0
    li          v1, 0x1
    beq         v0, v1, @@DoTriangle
    nop
    li          v1, 0x2
    beq         v0, v1, @@DoCircle
    nop
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x20
    b           @End
    nop
@@DoCircle:
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x16
    b           @End
    nop
@@DoTriangle:
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a2, 0x17
    b           @End
    nop
.definelabel @CaseBG,.
    jal         CheckRollBasic
    move        a0, s0
    beqz        v1, @@CheckAttacks
    nop
    move        a0, s0
    li          a1, 0x0
    li          a2, 0x1C
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a3, 0x4
@@CheckAttacks:
    jal         0x098DBB70
    move        a0, s0
    nop
    andi        v1, v0, 0xFF
    bnez        v1, @@CheckMelee
    nop
    lbu         a0, 0x66B(s0) ; Bullets in Mag
    beqz        a0, @@CheckReload
    nop
    lbu         v1, 0x487(s0) ; Capacity
    slt         at, a0, v1
    beqz        at, @@CheckMelee
    nop
    lh          v1, 0x62C(s0) ; Remaining bullets in inventory
    slt         at, a0, v1
    beqz        at, @@CheckMelee
    nop
@@CheckReload:
    lw          a0, InputPress(s0)
    andi        v1, a0, BtnTriangle
    beqz        v1, @@CheckMelee
    nop
    lh          v1, 0x62C(s0)
    blez        v1, @@CheckMelee
    nop
    move        a0, s0
    li          a1, 0x1
    li          a2, 0x9
    jal         0x098db598 ; act_set2
    li          a3, 0x5
@@CheckMelee:
    lw          a0, InputPress(s0)
    andi        v1, a0, BtnTriangleCircle
    li          a1, BtnTriangleCircle
    bne         v1, a1, @@CheckShot
    nop
    lbu         v1, 0x544(s0)
    bnez        v1, @@CheckShot
    nop
    jal         0x098DB220
    move        a0, s0
    andi        v1, v0, 0xFF
    bnez        v1, @@CheckShot
    nop
    move        a0, s0
    li          a1, 0x1
    li          a2, 0x3D
    jal         0x098db598 ; act_set2
    li          a3, 0x4
    b           @End
    nop
@@CheckShot:
    lbu         v1, 0x66B(s0) ; Is Empty?
    bnez        v1, @@ChooseShot
    move        a0, s0
    lw          v1, InputPress(s0)
    andi        a1, v1, BtnCircle
    beqz        a1, @End
    nop
    move        a0, s0
    li          a1, 0x1
    li          a2, 0xC
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a3, 0x5
    b           @End
    nop
@@ChooseShot:
    jal         0x098DB2A0
    li          a1, 0x10
    lw          a0, InputPress(s0)
    andi        v1, a0, BtnCircle
    beqz        v1, @End
    nop
    lbu         a1, 0x53C(s0)
    jal         0x098DCFF0
    move        a0, s0
    li          a2, 0x2
    beql        v0, a2, @@HeavyShot
    move        a0, s0
    li          a1, 0x1
    beql        v0, a1, @@MediumShot
    move        a0, s0
    beqz        v0, @@LightShot
    move        a0, s0
    b           @@MediumShot
    move        a0, s0
@@LightShot:
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a3, 0x5
    b           @End
    nop
@@MediumShot:
    li          a1, 0x1
    li          a2, 0x8
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a3, 0x5
    b           @End
    nop
@@HeavyShot:
    li          a1, 0x1
    li          a2, 0xa
    jal         0x098dbe90 ; 0x098dbe90 ; Pl_act_set
    li          a3, 0x5
.definelabel @End,.
    lw          ra, 0xC(sp)
    lw          s0, 0x8(sp)
    jr          ra
    addiu       sp, sp, 0x10

.org 0x09a4fb50
    .dw @CaseGS
    .dw @CaseBG
    .dw @CaseHammer
    .dw @CaseLance
    .dw @CaseSnS
    .dw @CaseBG
    .dw @CaseDB