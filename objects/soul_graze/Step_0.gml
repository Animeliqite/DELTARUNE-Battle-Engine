var inst=soul;
if(!instance_exists(inst)){
	instance_destroy();
}else{
	x=inst.x;
	y=inst.y;
	var inst_graze=global.grazebullet;
	if(place_meeting(x, y, inst_graze)){
		if(!inst_graze.grazed){
			inst_graze.grazed=true;
			audio_play_sound(snd_graze,0,false);
			image_alpha=1;
			GMU_Anim_New(self,"image_alpha",0,0,1,-1,10);
			global.tp+=2;
		}
	}
}