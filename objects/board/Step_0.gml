if(image_xscale==0&&_scale_old!=0){
	instance_destroy();
	exit;
}

if(_angle_old!=image_angle){
	part_type_orientation(_p,_angle_old,_angle_old,0,0,true);
	part_type_size(_p,_scale_old,_scale_old,0,0);
	part_particles_create(_ps,x,y,_p,1);
	_angle_old=image_angle;
	_scale_old=image_xscale;
}