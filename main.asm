.psp
.include "mod/Addresses.asm"
.include "mod/Defines.asm"
.include "mod/BufferAdd.asm"
;.open "game/ULES00318.BIN","rel/EBOOT.BIN",0x0880326C
    ;.include "mod/memcpy.asm"
;.close

.ifdef JPN
.open "game/jpn/game_task.ovl","rel/jpn/game_task.ovl",0x098D4700 ; 1A6F6800
    ;.include "mod/controls/CustomFuncs.asm"
    ;.include "mod/controls/BasicAttackCk.asm"
    ;.include "mod/controls/SnS_Combos.asm"
    .include "mod/controls/LazyBuffer.asm"
    .include "mod/controls/Extras.asm"
.close
.elseifdef USA
.open "game/usa/game_task.ovl","rel/usa/game_task.ovl",0x098D4F80 ; 1A290800
    ;.include "mod/controls/CustomFuncs.asm"
    ;.include "mod/controls/BasicAttackCk.asm"
    ;.include "mod/controls/SnS_Combos.asm"
    .include "mod/controls/LazyBuffer.asm"
    .include "mod/controls/Extras.asm"
.close
.else
.open "game/eur/game_task.ovl","rel/eur/game_task.ovl",0x098D5D00 ; 1A8BD800
    ;.include "mod/controls/CustomFuncs.asm"
    ;.include "mod/controls/BasicAttackCk.asm"
    ;.include "mod/controls/SnS_Combos.asm"
    .include "mod/controls/LazyBuffer.asm"
    .include "mod/controls/Extras.asm"
.close
.endif