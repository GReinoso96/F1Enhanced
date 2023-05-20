.org 0x0880E724 ; memcpy
    b 0x0880e840 ; memmove
    nop

.definelabel DoSnSCombo,.
    lw          a0,0x4A4(s1)
    andi        v1, a0, 0x3000
    beqz        @@End
    nop
@@CheckTriangle:
    andi        v1, a0, 0x1000
    beqz        v1, @@DoCircle
    li          v0, 0x2
    li          v0, 0x1
@@DoCircle:
    sb          v0, 0x1F6(s1)
@@End:
    jr          ra