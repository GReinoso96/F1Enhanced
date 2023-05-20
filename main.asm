.psp
.open "game/ULES00318.BIN","rel/ULES00318.BIN",0x0880326C

.close

.open "game/game_task.ovl","rel/game_task.ovl",0x098D5D00 ; in data.bin at 0x1A8BD800
    .include "mod/controls/BasicAttackCk.asm"
.close