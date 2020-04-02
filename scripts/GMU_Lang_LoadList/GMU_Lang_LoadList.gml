GMU_Lang_ClearList();
//读取语言列表内容
var STR=_GMU_Lang_LoadFileToString("language/list.txt");
if(STR==""){
	return false;
}

//逐行读取语言列表
var LIST=global._gmu_lang_list;
var FILE=file_text_open_from_string(STR);
while(!file_text_eof(FILE)){
	var LANG=file_text_read_string(FILE);
	file_text_readln(FILE);
	if(!GMU_Lang_IsExists(LANG)){
		if(directory_exists("language/"+LANG)){
			ds_list_add(LIST,LANG);
		}
	}
}
//关闭文件
file_text_close(FILE);

return !ds_list_empty(LIST);