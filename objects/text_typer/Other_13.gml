///@desc Clear
var proc=0;
repeat(ds_list_size(_list_inst)){
	var INST=ds_list_find_value(_list_inst,proc);
	if(instance_exists(INST)){
		instance_destroy(INST);
	}
	proc+=1;
}
ds_list_clear(_list_inst);