depth=DEPTH_BATTLE.UI;

_damage=0;
color=make_color_rgb(204,153,204);
_scale_y=0;
_alpha=1;
var MOVE_X=75;
var MOVE_Y=50;
GMU_Anim_New(self,"x",GMU_ANIM.CUBIC,GMU_ANIM.OUT,x-MOVE_X,MOVE_X,20);
GMU_Anim_New(self,"y",GMU_ANIM.BOUNCE,GMU_ANIM.OUT,y-MOVE_Y,MOVE_Y,50);
GMU_Anim_New(self,"_scale_y",0,0,0,1,5);
GMU_Anim_New(self,"_scale_y",0,0,1,2,25,75);
GMU_Anim_New(self,"_alpha",0,0,1,-1,25,75);
x-=MOVE_X;
y-=MOVE_Y;

alarm[0]=75+25;