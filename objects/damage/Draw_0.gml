if(_damage>0){
	draw_set_font(global.font_damage);
	draw_set_valign(fa_bottom);
	draw_text_transformed_color(x,y,string(_damage),2,2*_scale_y,0,color,color,color,color,_alpha);
	draw_set_valign(fa_top);
}else{
	draw_sprite_ext(spr_damage_miss,0,x,y,2,2*_scale_y,0,color,_alpha);
}