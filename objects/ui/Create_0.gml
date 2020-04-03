depth=DEPTH_BATTLE.UI;

_tp_old=0;
_tp_show=0;
_tp_bar_show=0;
_tp_bar_line=0;
_tp_bar_overlay=0;
_tp_offset_x=-100;
_offset_y=255;

_phase=-1;
cooldown=false;
cooldown2=false;
alarm[0]=25;

Battle_FindMonsterIndex();

_monster_glow=false;
_monster_glow_alpha=0;
_monster_alpha_complete=false;

GMU_Anim_New(self,"_offset_y",GMU_ANIM.CUBIC,GMU_ANIM.OUT,225,-225,25);
GMU_Anim_New(self,"_tp_offset_x",GMU_ANIM.CUBIC,GMU_ANIM.OUT,-100,100,30);