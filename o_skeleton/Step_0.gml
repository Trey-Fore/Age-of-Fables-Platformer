/// @description Execute the state
if (hp < 1) state = skele.death;
switch (state) {
	#region Idle
	case skele.idle:
	sprite_index = s_skeleton_idle;
		if (instance_exists(o_player)){
			var dis = distance_to_object(o_player);
			if (dis < sight and alarm[0] <= 0){
				if(o_player.x != x){
					state = skele.detect;
				}	
			}
		}
	break;
	#endregion
	#region Move Right
		case skele.move_right:
			sprite_index = s_skeleton_walk;
			var wall_at_right = place_meeting(x+1,y,o_solid);
			var ledge_at_right = !position_meeting(bbox_right + 1, bbox_bottom + 1, o_solid);
			if(wall_at_right || ledge_at_right){
				state = skele.move_left;	
			}
			image_xscale = 1;
			x+= .15;
			//switch to attack
			if (instance_exists(o_player)){
			var dis = distance_to_object(o_player);
			if (dis < attack_sight){
				if(o_player.x != x){
					state = skele.attack;
					}
				}
			}
		break;
	#endregion
	#region Move Left
		case skele.move_left:
			sprite_index = s_skeleton_walk;
			var wall_at_left = place_meeting(x-1,y,o_solid);
			var ledge_at_left = !position_meeting(bbox_left - 1, bbox_bottom + 1, o_solid);
			if(wall_at_left || ledge_at_left){
				state = skele.move_right;	
			}
			image_xscale = -1;
			x-= .15;
			//switch to attack
			if (instance_exists(o_player)){
			var dis = distance_to_object(o_player);
			if (dis < attack_sight){
				if(o_player.x != x){
					state = skele.attack;
					}
				}
			}
		break;
	#endregion
	#region Death
		case skele.death:
		sprite_index = s_skeleton_death;
		break;
	#endregion
	#region Detect
		case skele.detect:
		sprite_index = s_skeleton_react;
		break;
	#endregion
	#region Attack
		case skele.attack:
		process_attack_skeleton(s_skeleton_attack,s_skeleton_attack_hb);
		if (instance_exists(o_player)){
			var dist = distance_to_object(o_player);
			if (dist > attack_sight and image_index = 0){
				sprite_index = s_skeleton_walk;
				state = skele.idle;
			}
		}
		break;
	#endregion
}