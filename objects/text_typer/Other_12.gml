///@desc Command
var cmd=_list_cmd;

switch(cmd[|0]){
	case "speed":
		if(is_real(cmd[|1])){
			if(cmd[|1]>=0){
				_speed=cmd[|1];
			}
		}
		break;
		
	case "color":
		if(is_string(cmd[|1])){
			var color=c_white;
			switch(cmd[|1]){
				case "white":
					color=c_white;
					break;
				case "black":
					color=c_black;
					break;
				case "red":
					color=c_red;
					break;
				case "yellow":
					color=c_yellow;
					break;
				case "gray":
					color=c_gray;
					break;
				case "gray_dark":
					color=c_dkgray;
					break;
				case "gray_light":
					color=c_ltgray;
					break;
			}
			_color[0]=color;
			_color[1]=color;
			_color[2]=color;
			_color[3]=color;
		}
		break;
		
	case "sleep":
		if(is_real(cmd[|1])&&!_skipping&&!_instant){
			if(cmd[|1]>=0){
				_sleep=cmd[|1];
			}
		}
		break;
	
	case "pause":
		_paused=true;
		_skipping=false;
		_sleep=0;
		_char_frame_remain=0;
		break;
		
	case "instant":
		if(is_real(cmd[|1])){
			_instant=bool(cmd[|1]);
		}
		break;
		
	case "skippable":
		if(is_real(cmd[|1])){
			_skippable=bool(cmd[|1]);
		}
		break;
		
	case "voice":
		if(is_real(cmd[|1])){
			if(cmd[|1]>=0&&cmd[|1]<array_height_2d(_group_voice)){
				_voice=cmd[|1];
			}
		}
		break;
		
	case "font":
		if(is_real(cmd[|1])){
			if(cmd[|1]>=0&&cmd[|1]<array_height_2d(_group_font)){
				_font=cmd[|1];
			}
		}
		break;
		
	case "sprite":
		if(is_real(cmd[|2])&&is_real(cmd[|3])&&is_real(cmd[|4])){
			if(is_string(cmd[|1])){
				cmd[|1]=asset_get_index(cmd[|1]);
			}
			if(sprite_exists(cmd[|1])){
				var INST=instance_create_depth(_char_x,_char_y,0,text_single);
				INST.sprite=cmd[|1];
				INST.sprite_image=cmd[|2];
				INST.scale_x=_scale_x;
				INST.scale_x=_scale_y;
				INST.angle=_angle;
				INST.color=_color;
				INST.alpha=_alpha;
				INST.effect=_effect;
				INST.gui=_gui;
				INST.depth=_depth;
				ds_list_add(_list_inst,INST);
				_char_x+=(sprite_get_width(cmd[|1])+_space_x)*_scale_x;
			}
		}
		break;
		
	case "clear":
		event_user(3);
		_char_x=x;
		_char_y=y;
		break;
		
	case "end":
		instance_destroy();
		break;
	
	case "scale":
		if(is_real(cmd[|1])){
			_scale_x=cmd[|1];
			_scale_y=cmd[|1];
		}
		break;
	
	case "scale_x":
		if(is_real(cmd[|1])){
			_scale_x=cmd[|1];
		}
		break;
		
	case "scale_y":
		if(is_real(cmd[|1])){
			_scale_y=cmd[|1];
		}
		break;
		
	case "space_x":
		if(is_real(cmd[|1])){
			_space_x=cmd[|1];
		}
		break;
		
	case "space_y":
		if(is_real(cmd[|1])){
			_space_y=cmd[|1];
		}
		break;
	
	case "define":
		if(is_string(cmd[|1])&&(is_real(cmd[|2])||is_string(cmd[|2]))){
			ds_map_delete(_map_macro,cmd[|1]);
			ds_map_add(_map_macro,cmd[|1],cmd[|2]);
		}
		break;
		
	case "undefine":
		if(is_string(cmd[|1])){
			ds_map_delete(_map_macro,cmd[|1]);
		}
		break;
		
	case "insert":
		if(is_real(cmd[|1])||is_string(cmd[|1])){
			text=string_insert(string(cmd[|1]),text,_char_proc+1);
		}
		break;
		
	case "choice":
		if(is_real(cmd[|1])){
			if(cmd[|1]>=0&&cmd[|1]<=1){
				draw_set_font(_group_font[_font,0]);
				_choice_x[cmd[|1]]=_char_x-string_width(" ")*_scale_x;
				_choice_y[cmd[|1]]=_char_y+string_height(" ")/2*_scale_x;
			}
		}else if(is_string(cmd[|1])){
			if(cmd[|1]!=""){
				_choice_macro=cmd[|1];
				_choice=0;
			}
		}
		break;
	
	case "if":
		var target_0=cmd[|1];
		var operator=cmd[|2];
		var target_1=cmd[|3];
		var insert_0=cmd[|4];
		var else_indicator=cmd[|5];
		var insert_1=cmd[|6];
		var result=true;
		
		target_0=(is_bool(target_0) ? real(target_0) : target_0);
		target_1=(is_bool(target_1) ? real(target_1) : target_1);
		
		if(((is_string(target_0)&&is_string(target_1))||(is_real(target_0)&&is_real(target_1)))&&(is_string(insert_0)||is_real(insert_0))&&is_string(else_indicator)&&(is_string(insert_1)||is_real(insert_1))){
			if(operator=="=="){
				result=(target_0==target_1);
			}else if(operator=="!="){
				result=(target_0!=target_1);
			}else if(operator==">"){
				result=(target_0>target_1);
			}else if(operator==">="){
				result=(target_0>=target_1);
			}else if(operator=="<"){
				result=(target_0<target_1);
			}else if(operator=="<="){
				result=(target_0<=target_1);
			}else{
				break;
			}
			
			if(result){
				text=string_insert(string(insert_0),text,_char_proc+1);
			}else if(is_string(else_indicator)){
				if(else_indicator=="else"){
					text=string_insert(string(insert_1),text,_char_proc+1);
				}
			}
		}
		break;
		
	case "face":
		var face=cmd[|1];
		var image=cmd[|2];
		
		if(is_real(face)){
			if(face==0){
				if(instance_exists(_inst_face)){
					instance_destroy(_inst_face);
					x-=116;
				}
			}else if(face<array_length_1d(_group_face)&&is_real(image)){
				if(instance_exists(_inst_face)){
					if(_inst_face.object_index!=_group_face[face]){
						instance_destroy(_inst_face);
						_inst_face=instance_create_depth(x-70,y+50,_depth,_group_face[face]);
						_inst_face.gui=_gui;
					}
				}else{
					x+=116;
					_inst_face=instance_create_depth(x-70,y+50,_depth,_group_face[face]);
					_inst_face.gui=_gui;
				}
				_inst_face._face=image;
			}
		}
		break;
		
	case "effect":
		if(is_real(cmd[|1])){
			_effect=cmd[|1];
		}
		break;
		
	case "depth":
		if(is_real(cmd[|1])){
			_depth=cmd[|1];
		}
		break;
		
	case "gui":
		if(is_real(cmd[|1])){
			_gui=cmd[|1];
		}
		break;
		
	case "sound":
		if(is_real(cmd[|1])){
			if(audio_exists(cmd[|1])){
				audio_play_sound(cmd[|1],0,false);
			}
		}
		break;
		
	case "script":
		if(is_real(cmd[|1])){
			if(script_exists(cmd[|1])){
				script_execute(cmd[|1]);
			}
		}
		break;
		
	case "process_lang":
		var choice=ds_map_find_value(_map_macro,"CHOICE");
		if(choice==0){
			GMU_Lang_LoadString("english");
		}else{
			GMU_Lang_LoadString("schinese");
		}
		room_goto_next();
		break;
}