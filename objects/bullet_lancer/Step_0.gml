if(instance_exists(_inst)){
	_inst.x=x;
	_inst.y=y;
	_inst.image_angle=image_angle;
}
if (place_meeting(x,y,soul)) {
	instance_destroy();
}

if(y>500){
	instance_destroy();
}