if (place_meeting(x,y,soul)) {
	with (soul) {
		_inv=60;
		var _damage=ui._monster_damage;
		global.hp-=_damage;
		var _susie=susie;
		var inst_damage=instance_create_depth(_susie.x+100,_susie.y+80,0,damage);
		inst_damage._damage=_damage;
		inst_damage.color=c_white;
		audio_play_sound(snd_hurt,0,false);
		Camera_Shake(2,2,3,3);
		_susie.sprite_index=spr_susie_hurt;
		_susie.alarm[7]=45;	
	}
	instance_destroy();
}