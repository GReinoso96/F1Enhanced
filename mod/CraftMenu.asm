; Addresses
.definelabel Draw_Craft_Menu_List,      0x0883f740
.definelabel Font_Set_Color,            0x08871f9C
.definelabel Font_Set_Size,             0x08871f4c
.definelabel Draw_Shop_Frame,           0x08833cb8
.definelabel Font_Print_1,              0x088723e4
.definelabel PTR_Current_Menu_ID,       0x099430b8
.definelabel PTR_Unk_1,                 0x0897b838
.definelabel PTR_Unk_2,                 0x0993cca8

.org Draw_Craft_Menu_List
    addiu       sp, sp, -0x20
    sw          ra, 0x1C(sp)
    sw          s3, 0x18(sp)
    sw          s2, 0x14(sp)
    sw          s1, 0x10(sp)
    sw          s0, 0xC(sp)
    lui         v0, 0x994
    lw          v1, 0x30B8(s0)
    move        s3, a0 ; Stores result to a0
    li          a1, 0
    lui         v0, 0x898
    lw          a0, -0x47C8(v0)
    jal         Font_Set_Color
    addiu       s0, v1, 0x44
    lui         v0, 0x898
    lw          a0, -0x47C8(s0)
    li          a1, 0xE
    jal         Font_Set_Size
    move        a2, a1
    lw          a3, 0x24(s0)
    lui         a1, 0x88F
    move        a0, s3
    addiu       a1, a1, 0x31B0
    li          a2, 0
    li          t0, 0xFF
    jal         Draw_Shop_Frame
    li          t1, 0
    lw          v0, 0x58(s0)
    andi        v0, v0, 0x4
    bnez        v0, 0x0883F9B0
    nop
    lh          a0, 0x3C(s0)
    lw          v0, 0x8(s0)
    li          s1, 0
    sll         v1, a0, 0x3
    subu        a0, v1, a0
    sll         v1, a0, 0x2
    subu        v1, v1, a0
    sll         v1, v1, 0x2
    addu        s2, v0, v1
@@DoLoop:
    lh          a0, 0x3C(s0)
    lw          v0, 0x30(s0)
    sll         v1, a0, 0x3
    subu        v1, v1, a0
    addu        v1, s1, v1
    slt         at, v1, v0
    beqz        at, 0x0883F9B0
    nop
    lh          v1, 0x8(s2)
    li          v0, 0x2
    beq         v1, v0, @@SetGray
    lui         v0, 0x898
@@SetWhite:
    lw          a0, -0x47C8(v0)
    jal         Font_Set_Color
    li          a1, 0
    b           @@DrawStuff
    nop
@@SetGray:
    lw          a0, -0x47C8(v0)
    jal         Font_Set_Color
    li          a1, 10
@@DrawStuff:
    lh          v1, 0x8(s2)
    li          v0, 0x2
    bne         v1, v0, @@DrawWeapon
    nop
@@DrawDashes:
    lui         v0, 0x88F
    lh          a1, 0x31B0(v0) ; Change - Position at CraftList_Frame_X
    addiu       a1, a1, 0x8 ; Add 0x8
    lui         a3, 0x88F
    addiu       a3, a3, 0x2DE0
    lui         t0, 0x88F
    addiu       t0, t0, 0x307C
    lui         v0, 0x88F
    lhu         a2, 0x31BE(v0)
    lui         v0, 0x88F
    lhu         v1, 0x31C0(v0)
    mult        v1, s1
    lui         v0, 0x898
    lw          a0, -0x47C8(v0)
    mflo        v0
    addu        v0, a2, v0
    jal         Font_Print_1
    seh         a2, v0
    b           0x0883F9A4
    addiu       s1, s1, 0x1
@@DrawWeapon:
    lui         v0, 0x88F
    lh          a1, 0x31B0(v0) ; Change - Position at CraftList_Frame_X
    lhu         v1, 0x31BC(v0)
    addiu       a1, a1, 0x20 ; Add 0x20
    lui         a3, 0x88F
    addiu       a3, a3, 0x2DE0
    lw          t0, 0x4(s2)
    lui         v0, 0x88F
    lhu         a2, 0x31B2(v0) ; Change - Position at CraftList_Frame_Y
    addiu       a2, a2, 0x18 ; Add 0x18
    lui         v0, 0x88F
    lhu         v1, 0x31C0(v0)
    mult        v1, s1
    lui         v0, 0x898
    lw          a0, -0x47C8(v0)
    mflo        v0
    addu        v0, a2, v0
    jal         Font_Print_1
    seh         a2, v0
@@DrawPrice:
    lui         v0, 0x88F
    lh          a1, 0x31BC(v0)
    lhu         v1, 0x31AC(v0)
    addu        a1, a1, v1
    lui         a3, 0x88F
    addiu       a3, a3, 0x2DE0
    lw          t0, 0x4(s2)
    lui         v0, 0x88F
    lhu         a2, 0x31B2(v0) ; Change - Position at CraftList_Frame_Y
    addiu       a2, a2, 0x18 ; Add 0x18
    lui         v0, 0x88F
    lhu         v1, 0x31C0(v0)
    mult        v1, s1
    lui         v0, 0x898
    lw          a0, -0x47C8(v0)
    mflo        v0
    addu        v0, a2, v0
    jal         Font_Print_1
    seh         a2, v0