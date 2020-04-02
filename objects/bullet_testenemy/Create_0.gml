direction=point_direction(x,y,soul.x,soul.y)-180;
image_alpha=0;
move=0;

alarm[0]=60;

audio_play_sound(snd_spear, 0, false);

event_inherited();

global.bullet=bullet_testenemy;