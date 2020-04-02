///@arg file_name

var FILE_NAME=argument[0];
//检查文件是否存在
if(!file_exists(FILE_NAME)){
	return "";
}
//读取文件
var str="";
var FILE=file_text_open_read(FILE_NAME);
while(!file_text_eof(FILE)){
	//读取一行
	var S=file_text_readln(FILE);
	//排除空行、注释行
	if(S!="\n" && S!="\r" && S!="\r\n" && string_copy(S,1,2)!="//"){
		str+=S;
	}
}
//关闭文件
file_text_close(FILE);
return str;