///@desc Talk End
if(_talking){
	_talking=false;
	sprite_index=_face_idle_sprite[face];
	image_index=_face_idle_image[face];
	image_speed=_face_idle_speed[face];
}