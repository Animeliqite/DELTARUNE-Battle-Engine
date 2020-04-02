x=321;
y=171;

depth=DEPTH_BATTLE.BOARD;
sprite_index=spr_board;
mask_index=spr_board_shadow;
image_xscale=0;
image_yscale=0;

_angle_old=0;
_scale_old=0;

_ps=part_system_create();
_p=part_type_create();
part_system_depth(_ps,DEPTH_BATTLE.BOARD-50);
part_type_alpha2(_p,0.35,0);
part_type_life(_p,10,10);
part_type_sprite(_p,spr_board_shadow,true,false,false);

Battle_Fader_FadeTo(0.8,25);

GMU_Anim_New(self,"image_angle",0,0,0,180,25);
GMU_Anim_New(self,"image_xscale",0,0,0,2,25);
GMU_Anim_New(self,"image_yscale",0,0,0,2,25);

var inst=instance_create_depth(0,0,0,soul);
GMU_Anim_New(inst,"x",0,0,inst.x,x-inst.x,15);
GMU_Anim_New(inst,"y",0,0,inst.y,y-inst.y,15);

alarm[0]=25;