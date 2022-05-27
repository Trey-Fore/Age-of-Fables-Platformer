// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function process_attack(){
//Start of the attack
	if (sprite_index != argument0){
		sprite_index = argument0;
		image_index = 0;
		ds_list_clear(hit_by_attack);
	}
	
	
	mask_index = argument1;
	var hit_by_attack_now = ds_list_create();
	var hits = instance_place_list(x,y,o_enemy_parent, hit_by_attack_now, false);
	if (hits >0){
		for(var i =0; i<hits; i++){
			//if this instance has not yet been hit by this attack
			var hitID = hit_by_attack_now[| i];
			if(ds_list_find_index(hit_by_attack, hitID) == -1){
				ds_list_add(hit_by_attack,hitID);
				with(hitID){
					--hitID.hp;//Do enemy damage here possibly	
				}
			}
		}
	}
	
	ds_list_destroy(hit_by_attack_now);
	
	mask_index = player_idle;
}