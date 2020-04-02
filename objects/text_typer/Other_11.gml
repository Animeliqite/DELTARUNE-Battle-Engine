///@desc New Line
_char_x=x;

draw_set_font(_group_font[_font,0]);
_char_y+=(string_height(" ")+_space_y)*_scale_y;

var HEIGHT=_char_y-y;
if(HEIGHT>height){
	height=HEIGHT;
}