Camera_Shake(8,8,1,1,false,false,2,2);
audio_play_sound(snd_damage,0,false);
audio_play_sound(snd_pong,0,false);

instance_create_depth(490,190,0,attack_effect);

var inst=lancer;
inst.sprite_index=spr_lancer_hurt;
global.lancer_shake=false;
inst.shake_x=24;
inst.shake_speed_x=2;
inst.shake_decrease_x=4;

alarm[3]=15;

global.tp+=6;