depth=DEPTH_BATTLE.PLAYER;

x=82;
y=140;

sprite_index=spr_susie_idle;
image_speed=1/2.5;
image_xscale=2;
image_yscale=2;

_damage=irandom_range(200,250);

alarm[0]=1;

instance_create_depth(0,0,0,camera);