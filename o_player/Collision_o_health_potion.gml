/// @description Insert description here
// You can write your code in this editor
if(o_player_stats.hp < o_player_stats.max_hp){
o_player_stats.hp++;
}

with(other){
	instance_destroy();	
	audio_play_sound(a_pickup_item,6,false);
}