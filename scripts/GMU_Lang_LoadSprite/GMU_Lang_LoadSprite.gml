///@arg lang_id/name
var LANG=argument[0];

//检查语言是否存在
if(!GMU_Lang_IsExists(LANG)){
	return false;
}

if(is_real(LANG)){
	LANG=GMU_Lang_GetName(LANG);
}

//检查贴图列表文件是否存在
if(!file_exists("language/"+LANG+"/sprite.txt")){
	return false;
}

//加载贴图列表文件
var STR=_GMU_Lang_LoadFileToString("language/"+LANG+"/sprite.txt");
var FILE=file_text_open_from_string(STR);

//逐行读取
while(!file_text_eof(FILE)){
	//读取一行
	var STR_IN=file_text_read_string(FILE);
	file_text_readln(FILE);
	//检查贴图文件是否存在
	var FILE_NAME="language/"+LANG+"/sprite/"+STR_IN;
	if(file_exists(FILE_NAME+".png")){
		//加载贴图
		var img_num=1;
		var smooth=false;
		var orig_x=0;
		var orig_y=0;
		//检查参数文件是否存在
		if(file_exists(FILE_NAME+".ini")){
			//如果存在，使用参数文件
			ini_open(FILE_NAME+".ini");
			img_num=ini_read_real("sprite","img_num",1);
			smooth=ini_read_real("sprite","smooth",false);
			orig_x=ini_read_real("sprite","orig_x",0);
			orig_y=ini_read_real("sprite","orig_y",0);
			ini_close();
		}
		//加载贴图
		var SPR=sprite_add(FILE_NAME+".png",img_num,false,smooth,orig_x,orig_y);
		if(sprite_exists(SPR)){
			//如果贴图与已加载贴图重复，卸载已加载贴图
			var VALUE=ds_map_find_value(global._gmu_lang_sprite,STR_IN);
			if(VALUE!=undefined){
				if(sprite_exists(VALUE)){
					sprite_delete(VALUE);
				}
				ds_map_delete(global._gmu_lang_sprite,STR_IN);
			}
			//加入贴图MAP
			ds_map_add(global._gmu_lang_sprite,STR_IN,SPR);
		}
	}
}
file_text_close(FILE);

return true;