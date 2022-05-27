/// @description Go up in score
repeat(3){
	if (global.mana < global.max_mana){
	++global.mana;
	}
}


with(other){
	instance_destroy();	
}