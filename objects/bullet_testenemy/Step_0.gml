if (move==0) {
	image_alpha+=0.1;
	image_angle=lerp(image_angle,point_direction(x,y,soul.x,soul.y),0.2);
}

if (move==1) {
	friction=-0.2;
	audio_play_sound(snd_spearrise, 0, false);
	image_angle=image_angle;
	move_towards_point(soul.x,soul.y, 2);
	move=2;
}

event_inherited();