var inst=instance_create_depth(0,0,0,bullet);
GMU_Anim_New(inst,"image_alpha",0,0,0,1,15);
inst.y=100+random(140);
if(irandom(1)){
	inst.x=125+random(20);
	inst.hspeed=3;
}else{
	inst.x=500+random(20);
	inst.hspeed=-3;
	inst.image_xscale=-1;
}

alarm[0]=20;