//text_typer args
text="";
_speed=0;
_char_per_frame=1;
_voice=1;
_voice_single=-1;
_sleep=0;
_skippable=true;
_skipping=false;
_paused=false;
_instant=false;
_space_x=0;
_space_y=0;
_char_frame_remain=0;
_char_x=x;
_char_y=y;
_char="";
_char_proc=1;
_voice_played=false;
_list_inst=ds_list_create();
_list_cmd=ds_list_create();
_map_macro=ds_map_create();
_inst_face=noone;

_choice=-1;
_choice_x[0]=0;
_choice_y[0]=0;
_choice_x[1]=0;
_choice_y[0]=0;
_choice_macro="";

//text_single args
_font=0;
_scale_x=1;
_scale_y=1;
_angle=0;
_shadow=false;
_color[0]=c_white;
_color[1]=c_white;
_color[2]=c_white;
_color[3]=c_white;
_color_shadow[0]=make_color_rgb(41,41,87);
_color_shadow[1]=make_color_rgb(41,41,87);
_color_shadow[2]=make_color_rgb(3,3,125);
_color_shadow[3]=make_color_rgb(3,3,125);
_alpha=1;
_effect=0;
_gui=true;
_depth=DEPTH_UI.TEXT;

//group init
event_user(4);

width=0;
height=0;