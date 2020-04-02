switch (global.monster) {
	default:
		_encounter_dialog="* If you see this,{sleep 24} I messed&  something up.";
	break;
	
	case 0:
		_monster_name="Test Monster";
		_encounter_dialog="* You encountered the test monster.";
		_monster_text[0]="Check it out!";
		_monster_text[1]="Really,{sleep 24} &check it out.";
		_monster_damage=4;
		_enemy=instance_create_depth(470, 160, DEPTH_BATTLE.ENEMY, obj_testenemy);
		global.monster=obj_testenemy;
		global.turn=turn0_testmonster;
	break;
}