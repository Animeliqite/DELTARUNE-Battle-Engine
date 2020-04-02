persistent=true;
visible=false;


global.tp=0;
global.hp_max=110;
global.hp=110;
global.status=-1;

global.lancer_shake=false;

global.board_time=0;
global.grazebullet=-1;
global.bullet=-1;
global.turn=-1;
global.monster=0;

global.debug=true;

global.font_hp=font_add_sprite_ext(spr_hp_number,"0123456789",true,1);
global.font_damage=font_add_sprite_ext(spr_damage_number,"0123456789",true,1);

keyboard_set_map(ord("Z"),vk_enter);
keyboard_set_map(ord("X"),vk_shift);

GMU_Lang_Init();
GMU_Lang_LoadList();


var inst=instance_create_depth(50,150,0,text_typer);
inst.text="{voice 0}{speed 3}{scale 2}Select the language you prefer.&&{instant true}        {choice 0}English    {choice 1}中文{instant false}{choice `CHOICE`}{pause}{process_lang}"