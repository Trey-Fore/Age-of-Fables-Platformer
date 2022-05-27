// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_slash(){

//xspeed -= 0;
//yspeed -= 0;



process_attack(player_slash, player_slash_hb);

//TriggerCombo Chain
if (melee) && (image_index > 4){
	state = player.combo;	
}
	
	//if (animation_end()){
	//	sprite_index = s_player_idle;
	//	state = player.moving;
	//}
	
}