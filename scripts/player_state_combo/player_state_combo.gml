// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_combo(){
process_attack(player_combo, player_combo_hb);

//TriggerCombo Chain
if (melee) && (image_index > 4){
	state = player.slash;	
}
}