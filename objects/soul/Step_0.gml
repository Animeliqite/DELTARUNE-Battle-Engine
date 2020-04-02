var SPD=2.5;

if(keyboard_check(vk_up)){
	repeat(SPD*10){
		if(!place_meeting(x,y-0.1,board)){
			y-=0.1;
		}else{
			break;
		}
	}
}
if(keyboard_check(vk_down)){
	repeat(SPD*10){
		if(!place_meeting(x,y+0.1,board)){
			y+=0.1;
		}else{
			break;
		}
	}
}
if(keyboard_check(vk_left)){
	repeat(SPD*10){
		if(!place_meeting(x-0.1,y,board)){
			x-=0.1;
		}else{
			break;
		}
	}
}
if(keyboard_check(vk_right)){
	repeat(SPD*10){
		if(!place_meeting(x+0.1,y,board)){
			x+=0.1;
		}else{
			break;
		}
	}
}

var inst=global.bullet;
if(instance_exists(inst)){
	if(place_meeting(x,y,inst)){
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
}


if(_inv>0){
	_inv-=1;
	if(image_speed==0){
		image_speed=1/2;
		image_index=1;
	}
}else{
	if(image_speed!=0){
		image_speed=0;
		image_index=0;
	}
}