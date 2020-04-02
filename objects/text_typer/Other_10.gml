///@desc New Char
var font=-1;

if(ord(_char)<128){
	font=_group_font[_font,0];
}else{
	font=_group_font[_font,1];
}

if(_char!=" "){
	draw_set_font(_group_font[_font,0]);
	var H1=string_height(" ");
	draw_set_font(font);
	var H2=string_height(" ");
	var OFFSET=(H1-H2)/2*_scale_y;
	
	var INST=instance_create_depth(_char_x,_char_y+OFFSET,0,text_single);
	INST.text=_char;
	INST.font=font;
	INST.scale_x=_scale_x;
	INST.scale_y=_scale_y;
	INST.angle=_angle;
	INST.shadow=_shadow;
	INST.color[0]=_color[0];
	INST.color[1]=_color[1];
	INST.color[2]=_color[2];
	INST.color[3]=_color[3];
	INST.color_shadow=_color_shadow;
	INST.alpha=_alpha;
	INST.effect=_effect;
	INST.gui=_gui;
	INST.depth=_depth;
	ds_list_add(_list_inst,INST);
	
	if(!_voice_played&&!_skipping&&!_instant){
		var sound=_group_voice[_voice,irandom(array_length_2d(_group_voice,_voice)-1)];
		if(audio_exists(sound)){
			audio_stop_sound(sound);
			audio_play_sound(sound,0,false);
			_voice_played=true;
		}
	}
}

draw_set_font(font);
_char_x+=(string_width(_char)+_space_x)*_scale_x;

var WIDTH=_char_x-x;
if(WIDTH>width){
	width=WIDTH;
}