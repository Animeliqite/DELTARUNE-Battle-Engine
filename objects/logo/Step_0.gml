if(_status==0){
	_sin_x+=0.08;
}

if(_status==1){
	_sin_x+=1;
	_sin_y+=1;
}

if (keyboard_check_pressed(ord("Z"))) or (keyboard_check_pressed(vk_enter)) {
	var _fader = instance_create_depth(0, 0, DEPTH_UI.FADER, fader);
	var _camera = instance_create_depth(0, 0, DEPTH_BATTLE.FADER, camera);
	Battle_Fader_FadeTo(1, 60);
	audio_sound_gain(snd_logo, 0, 1000);
	if (alarm[3] < 0) {
		alarm[3] = 60;
	}
}