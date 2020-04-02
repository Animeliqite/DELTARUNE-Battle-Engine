///@arg lang_id/name
var LANG=argument[0];

//检查语言是否存在
if(!GMU_Lang_IsExists(LANG)){
	return false;
}

if(is_real(LANG)){
	LANG=GMU_Lang_GetName(LANG);
}

//检查文字文件是否存在
if(!file_exists("language/"+LANG+"/string.txt")){
	return false;
}

var STR=_GMU_Lang_LoadFileToString("language/"+LANG+"/string.txt");
var proc=0;
var str_mode=false;
var str_input_name=true;
var str_name="";
var str_text="";
var MAP=global._gmu_lang_string;
while(string_length(STR)>proc){
	proc+=1;
	var CHAR=string_char_at(STR,proc);
	//string模式开关
	if(CHAR="\""){
		str_mode=!str_mode;
		
		if(!str_mode){
			str_input_name=!str_input_name;
			
			if(str_input_name){
				//添加key和value到map
				ds_map_replace(MAP,str_name,str_text);
				str_name="";
				str_text="";
			}
		}
	}else if(str_mode){
		//排除Tab制表符、换行
		if(CHAR!="\t" && CHAR!="\n" && CHAR!="\r"){
			//转义
			if(CHAR=="\\"){
				proc+=1;
				CHAR=string_char_at(STR,proc);
				
				if(CHAR=="n"){
					CHAR="\n";
				}
				if(CHAR=="\\"){
					CHAR="\\"
				}
			}
			//添加字符到string
			if(str_input_name){
				str_name+=CHAR;
			}else{
				str_text+=CHAR;
			}
		}
	}
}
return true;