///@desc Draw
if(font_exists(font)){
	draw_set_font(font);
	if(shadow){
		draw_text_transformed_color(x+_offset_x+1,y+_offset_y+1,text,scale_x,scale_y,angle,color_shadow[0],color_shadow[1],color_shadow[3],color_shadow[2],alpha);
	}
	draw_text_transformed_color(x+_offset_x,y+_offset_y,text,scale_x,scale_y,angle,color[0],color[1],color[3],color[2],alpha);
}
if(sprite_exists(sprite)){
	draw_sprite_ext(sprite,sprite_image,x+_offset_x,y+_offset_y,scale_x,scale_y,angle,color,alpha);
}