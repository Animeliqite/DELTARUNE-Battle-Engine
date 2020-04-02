visible=false;
persistent=true;

x=0;
y=0;
w=640;
h=480;
scale=1;
angle=0;

shake_x=0;
shake_y=0;
shake_speed_x=0;
shake_speed_y=0;
shake_random_x=false;
shake_random_y=false;
shake_decrease_x=-1;
shake_decrease_y=-1;
_shake_pos_x=0;
_shake_pos_y=0;
_shake_time_x=0;
_shake_time_y=0;
_shake_positive_x=true;
_shake_positive_y=true;

target=noone;

_camera=camera_create_view(x,y,w/scale,h/scale,angle,target,-1,-1,w/scale/2,h/scale/2);