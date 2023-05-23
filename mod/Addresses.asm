; Crafting Menu
.definelabel CraftList_Text_X,       0x088f31bc ; Should be added to CraftList_Icon_X
.definelabel CraftList_Text_Y,       0x088f31be
.definelabel CraftList_Price_X,      0x088f31ac ; Added to CraftList_Text_X
.definelabel CraftList_Icon_X,       0x088f31ae
.definelabel CraftList_Frame_X,      0x088f31b0
.definelabel CraftList_Frame_Y,      0x088f31b2
.definelabel CraftList_Frame_W,      0x088f31b4
.definelabel CraftList_Frame_H,      0x088f31b6
.definelabel CraftList_Text_W,       0x088f31b8
.definelabel CraftList_Text_H,       0x088f31b9
.definelabel CraftList_Style,        0x088f31bb
.definelabel CraftList_Text_Spacing, 0x088f31c0

;.org CraftList_Text_X
;    .sh 0x20

;.org CraftList_Price_X
;    .sh 0x94

; Rewrite Ideas
; CraftList_Frame should set the base positions
; CraftList_Icon_X should be added to CraftList_Frame_X
; CraftList_Text_X should be added to CraftList_Icon_X
; CraftList_Text_Y should be added to CraftList_Frame_Y
; CraftList_Price_X should be added to CraftList_Text_X
; CraftList_Text_W should be set to 0xA to increase weapon name lengths