/// @description Execute the state
if (hp < 1) state = spikey_derp.death;
switch (state) {
	#region Idle
	case spikey_derp.idle:
	sprite_index = s_spikey_derp_idle;
	//image_speed = random_range(1,5);
		if (instance_exists(o_player)){
			var dis = distance_to_object(o_player);
			if (dis < sight and alarm[0] <= 0){
				if(o_player.x != x){
					state = spikey_derp.detect;
				}	
			}
		}
	break;
	#endregion
	#region Move Right
		case spikey_derp.move_right:
			sprite_index = s_spikey_derp_running;
			var wall_at_right = place_meeting(x+1,y,o_solid);
			var ledge_at_right = !position_meeting(bbox_right + 1, bbox_bottom + 1, o_solid);
			if(wall_at_right || ledge_at_right){
				state = spikey_derp.move_left;	
			}
			image_xscale = 1;
			x+= 1;
		break;
	#endregion
	#region Move Left
		case spikey_derp.move_left:
			sprite_index = s_spikey_derp_running;
			var wall_at_left = place_meeting(x-1,y,o_solid);
			var ledge_at_left = !position_meeting(bbox_left - 1, bbox_bottom + 1, o_solid);
			if(wall_at_left || ledge_at_left){
				state = spikey_derp.move_right;	
			}
			image_xscale = -1;
			x-= 1;
		break;
	#endregion
	#region Death
		case spikey_derp.death:
		sprite_index = s_spikey_derp_death;
		break;
	#endregion
	#region Detect
		case spikey_derp.detect:
		sprite_index = s_spikey_derp_detect;
		break;
	#endregion
}