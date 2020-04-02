text="";

event_user(3);

if(instance_exists(_inst_face)){
	instance_destroy(_inst_face);
}

ds_list_destroy(_list_inst);
ds_list_destroy(_list_cmd);
ds_map_destroy(_map_macro);