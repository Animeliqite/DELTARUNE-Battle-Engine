//TP
draw_sprite(spr_tp,0,8+_tp_offset_x,75);
draw_sprite(spr_tp_bar,0,38+_tp_offset_x,40);

draw_set_font(font_determination_sans);

if(_tp_show<100){
	draw_sprite_part_ext(spr_tp_bar,1,0,5+187/100*(100-_tp_bar_line),sprite_get_width(spr_tp_bar),sprite_get_height(spr_tp_bar),38+_tp_offset_x,40+5+187/100*(100-_tp_bar_line),1,1,c_red,1);
	draw_sprite_part(spr_tp_bar,1,0,5+187/100*(100-_tp_bar_show),sprite_get_width(spr_tp_bar),sprite_get_height(spr_tp_bar),38+_tp_offset_x,40+5+187/100*(100-_tp_bar_show));
	draw_sprite_part_ext(spr_tp_bar,1,0,5+187/100*(100-_tp_bar_overlay),sprite_get_width(spr_tp_bar),sprite_get_height(spr_tp_bar),38+_tp_offset_x,40+5+187/100*(100-_tp_bar_overlay),1,1,make_color_rgb(255,160,64),1);
	draw_sprite_part(spr_tp_bar,1,0,5+187/100*(100-_tp_bar_line),sprite_get_width(spr_tp_bar),2,38+_tp_offset_x,40+5+187/100*(100-_tp_bar_line));
	
	draw_set_color(c_white);
	draw_text_transformed(6+_tp_offset_x,109,string(floor(_tp_show)),2,2,0);
	draw_text_transformed(11+_tp_offset_x,134,"%",2,2,0);
}else{
	draw_sprite_ext(spr_tp_bar,1,38+_tp_offset_x,40,1,1,0,make_color_rgb(255,208,32),1);
	
	draw_set_color(c_yellow);
	draw_text_transformed(6+_tp_offset_x,109,"M",2,2,0);
	draw_text_transformed(11+_tp_offset_x,134,"A",2,2,0);
	draw_text_transformed(16+_tp_offset_x,159,"X",2,2,0);
}

//Player
draw_sprite_ext(spr_pixel,0,0,326+_offset_y,640,36,0,c_black,1);
draw_sprite_ext(spr_pixel,0,0,326+_offset_y,640,3,0,make_color_rgb(51,32,51),1);
draw_sprite_ext(spr_pixel,0,0,326+_offset_y+36,640,118,0,c_black,1);
draw_sprite_ext(spr_pixel,0,0,362+_offset_y,640,3,0,make_color_rgb(51,32,51),1);

var offset_x=2*106;
var offset_y=326+_offset_y;

draw_sprite(spr_icon_susie,0,offset_x+27,offset_y+21);
draw_sprite(spr_name_susie,0,offset_x+51,offset_y+13);

draw_sprite(spr_hp,0,offset_x+110,offset_y+21);
draw_sprite_ext(spr_pixel,0,offset_x+110+18,offset_y+21,76,9,0,make_color_rgb(128,0,0),1);
draw_sprite_ext(spr_pixel,0,offset_x+110+18,offset_y+21,76/global.hp_max*global.hp,9,0,make_color_rgb(255,0,255),1);
draw_sprite(spr_hp_slash,0,offset_x+118+43,offset_y+21-13);

draw_set_font(global.font_hp);
draw_set_color(c_white);
draw_text_transformed(offset_x+110+18+8+45,offset_y+21-13,string(global.hp_max),2,2,0);
draw_set_halign(fa_right);
draw_text_transformed(offset_x+110+18+8+45-21,offset_y+21-13,string(global.hp),2,2,0);
draw_set_halign(fa_left);

if (_monster_glow==true){
	GMU_Anim_New(id,"_monster_glow_alpha",GMU_ANIM.LINEAR,GMU_ANIM.IN_OUT,true,1,30);
	_shader_color=[1.0, 1.0, 1.0, 0.25];
	shader_set(shd_white_sprite);
	shader_set_uniform_f_array(shd_white_sprite, _shader_color);
	draw_sprite(global.monster.sprite_index,global.monster.image_index,global.monster.x,global.monster.y);
	shader_reset();
}