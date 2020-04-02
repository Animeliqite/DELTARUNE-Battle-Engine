var inst=lancer;
inst.sprite_index=spr_lancer_idle;
alarm[5]=30;

if(global.status>=3){
	global.lancer_shake=true;
	inst.image_index=1;
}
if(global.status>=6){
	global.lancer_shake=true;
	inst.image_index=2;
}