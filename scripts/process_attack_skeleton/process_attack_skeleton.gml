// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function process_attack_skeleton(){
//Start of the attack
	if (sprite_index != argument0){
		sprite_index = argument0;
		image_index = 0;
		ds_list_clear(player_hit_by_attack);
	}
	
	/*
	mask_index = argument1;
	var player_hit_by_attack_now = ds_list_create();
	var hits = instance_place_list(x,y,o_player, player_hit_by_attack_now, false);
	if (hits >0){
		for(var i =0; i<hits; i++){
			//if this instance has not yet been hit by this attack
			var hitID = player_hit_by_attack_now[| i];
			if(ds_list_find_index(player_hit_by_attack, hitID) == -1){
				ds_list_add(player_hit_by_attack,hitID);
				with(hitID){
					//take_damage();
					
				}
			}
		}
	}
	
	ds_list_destroy(player_hit_by_attack_now);*/
	//mask_index = s_skeleton_idle;
	//self.state = skele.idle;
}