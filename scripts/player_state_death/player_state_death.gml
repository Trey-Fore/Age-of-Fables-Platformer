// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_death(){
//with(o_player_stats){
//			hp = max_hp;
//			global.coins = 0;
//			global.mana = 0;
			
//		}
		
		sprite_index = player_death;
	
if (image_speed > 0){
    if (image_index > image_number - 1){
		image_speed = 0;
		y += yspeed;
		
		if !instance_exists(o_continue){
		instance_create_layer(x,y,"Spells",o_continue);
		}
	}
}
		
		
		//room_restart();
}