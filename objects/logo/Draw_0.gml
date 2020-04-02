if(_status==0){
	var w=sprite_get_width(spr_logo);
	var h=sprite_get_height(spr_logo);
	
	if(!surface_exists(_surface)){
		_surface=surface_create(320,h);
	}
	
	surface_set_target(_surface);{
		draw_clear_alpha(0,0);
		var proc=0;
		repeat(h){
			draw_sprite_part(spr_logo,0,0,proc,w,1,320/2-w/2+sin(-_sin_x+proc*_overlay_times)*_sin_x_times,proc);
			proc+=1;
		}
	}surface_reset_target();
	
	var proc=0;
	repeat(4){
		draw_surface_ext(_surface,0+proc*_sin_x_times,480/2-h,2,2,0,c_white,_alpha*(5-proc)/10);
		proc+=1;
	}
}

if(_status==1){
	draw_sprite_ext(spr_logo,0,320,240,2,2,0,c_white,_alpha);
	var proc=0;
	repeat(10){
		draw_sprite_ext(spr_logo,0,320+lengthdir_x(_sin_x_times*(0.5+sin(_sin_x*0.01+proc/5)),_sin_x+proc),240+lengthdir_y(-_sin_x_times*(0.5+sin(_sin_y*0.01+proc/5)),_sin_y+proc),2,2,0,c_white,_alpha*0.1);
		draw_sprite_ext(spr_logo,0,320+lengthdir_x(_sin_x_times*(0.5+sin(_sin_x*0.01+proc/10)),-_sin_x-proc),240+lengthdir_y(-_sin_x_times*(0.5+sin(_sin_y*0.01+proc/10)),-_sin_y-proc),2,2,0,c_white,_alpha*0.1);
		draw_sprite_ext(spr_logo,0,320+lengthdir_x(-_sin_x_times*(0.5+sin(_sin_y*0.01+proc/10)),_sin_x+proc),240+lengthdir_y(_sin_x_times*(0.5+sin(_sin_x*0.01+proc/10)),_sin_y+proc),2,2,0,c_white,_alpha*0.1);
		draw_sprite_ext(spr_logo,0,320+lengthdir_x(-_sin_x_times*(0.5+sin(_sin_y*0.01+proc/5)),-_sin_x-proc),240+lengthdir_y(_sin_x_times*(0.5+sin(_sin_x*0.01+proc/5)),-_sin_y-proc),2,2,0,c_white,_alpha*0.1);
		proc+=360/10;
	}
	draw_sprite_ext(spr_logo,1,320,240,2,2,0,c_white,_alpha);
}