sprite_index=spr_susie_attack;
image_index=0;
image_speed=1;
audio_play_sound(snd_attack,0,false);

if(global.status==7){
	var inst=camera;
	inst.y=480;
	audio_stop_sound(bgm_vs_susie);
	alarm[6]=120;
}