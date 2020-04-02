///@arg lang_name
///@arg string_name
///@arg default*
var LANG=argument[0];
var KEY=argument[1];
var DEF="";
if(argument_count>=3){
	DEF=argument[2];
}

if(!GMU_Lang_IsExists(LANG)){
	return DEF;
}

if(!file_exists("language/"+LANG+"/info.ini")){
	return DEF;
}

ini_open("language/"+LANG+"/info.ini");
var VALUE=ini_read_string("info",KEY,DEF);
ini_close();

return VALUE;