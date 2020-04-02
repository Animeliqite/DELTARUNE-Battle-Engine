///@arg alpha
///@arg time
var ALPHA=argument[0];
var TIME=argument[1];

var inst=fader;

GMU_Anim_New(inst,"alpha",0,0,inst.alpha,ALPHA-inst.alpha,TIME);

return true;