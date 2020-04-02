audio_play_sound(snd_logo,0,false);
_sin_x=0;
_sin_y=0;
_sin_x_times=30;
_sin_y_times=30;
_overlay_times=0.5;
_alpha=0;

_status=0;

_surface=-1;
GMU_Anim_New(self,"_sin_x_times",GMU_ANIM.SINE,GMU_ANIM.IN,_sin_x_times,-_sin_x_times,150);
GMU_Anim_New(self,"_overlay_times",GMU_ANIM.SINE,GMU_ANIM.IN,_overlay_times,-_overlay_times,180);
GMU_Anim_New(self,"_alpha",0,0,0,1,180);

alarm[0]=280;