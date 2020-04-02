Battle_Fader_FadeTo(0,25);
GMU_Anim_New(self,"image_angle",0,0,0,-180,25);
GMU_Anim_New(self,"image_xscale",0,0,2,-2,25);
GMU_Anim_New(self,"image_yscale",0,0,2,-2,25);

inst=soul;
GMU_Anim_New(inst,"x",0,0,inst.x,-inst.x,15);
GMU_Anim_New(inst,"y",0,0,inst.y,-inst.y,15);

while(instance_exists(global.bullet)){
	instance_destroy(global.bullet);
}

while(instance_exists(global.turn)){
	instance_destroy(global.turn);
}
if (instance_exists(ui)) {
	ui._phase=0;
}
if (alarm[2] < 0)
	alarm[2]=15;