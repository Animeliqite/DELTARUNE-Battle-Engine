if(!_talking){
	if(!_face_idle_loop[face]||_face_idle_loop_wait[face]){
		image_speed=0;
	}
	if(_face_idle_loop_wait[face]){
		alarm[0]=_face_idle_loop_wait[face];
	}
}