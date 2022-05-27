/// @description Execute the state
if (hp < 1) state = flyingskull.death;
switch (state) {
	#region Move Right
		case flyingskull.move_right:
			var wall_at_right = place_meeting(x+1,y,o_solid);
			var ledge_at_right = !position_meeting(bbox_right + 1, bbox_bottom + 1, o_solid);
			if(wall_at_right || ledge_at_right){
				state = flyingskull.move_left;	
			}
			
			image_xscale = 1;
			x+= 1;
			
			if (instance_exists(o_player)){
			var dis = distance_to_object(o_player);
			if (dis < sight){
				if (alarm[0] <= 0){
				var dir = point_direction(x,y,o_player.x,o_player.y);
				var e_spell = instance_create_layer(x,y,"Spells", o_spell_enemy_ice);
					e_spell.direction = dir;
					if(o_player.x != x){
						image_xscale = sign(o_player.x - x);	
						}
						alarm[0]=spell_cooldown;
					}
				}
			}
		break;
	#endregion
	#region Move Left
		case flyingskull.move_left:
			var wall_at_left = place_meeting(x-1,y,o_solid);
			var ledge_at_left = !position_meeting(bbox_left - 1, bbox_bottom + 1, o_solid);
			if(wall_at_left || ledge_at_left){
				state = flyingskull.move_right;	
			}
			image_xscale = -1;
			x-= 1;
			if (instance_exists(o_player)){
			var dis = distance_to_object(o_player);
			if (dis < sight){
				if (alarm[0] <= 0){
				var dir = point_direction(x,y,o_player.x,o_player.y);
				var e_spell = instance_create_layer(x,y,"Spells", o_spell_enemy_ice);
					e_spell.direction = dir;
					if(o_player.x != x){
						image_xscale = sign(o_player.x - x);	
						}
						alarm[0]=spell_cooldown;
					}
				}
			}
		break;
	
	#endregion
	#region Death
		case flyingskull.death:
		instance_destroy();
		//sprite_index = s_bat_death;
		
		break;
	#endregion	
}