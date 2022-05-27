/// @description Go up in score
repeat(2){
	if (global.mana < global.max_mana){
	++global.mana;
	}
}
with(other){
	instance_destroy();	
}