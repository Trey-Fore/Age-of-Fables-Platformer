/// @description Execute the state
if (hp < 1) state = snake.death;
switch (state) {
	#region Move Right
		case snake.move_right:
			var wall_at_right = place_meeting(x+1,y,o_solid);
			var ledge_at_right = !position_meeting(bbox_right + 1, bbox_bottom + 1, o_solid);
			if(wall_at_right || ledge_at_right){
				state = snake.move_left;	
			}
			
			image_xscale = 1;
			x+= 1;
		break;
	#endregion
	#region Move Left
		case snake.move_left:
			var wall_at_left = place_meeting(x-1,y,o_solid);
			var ledge_at_left = !position_meeting(bbox_left - 1, bbox_bottom + 1, o_solid);
			if(wall_at_left || ledge_at_left){
				state = snake.move_right;	
			}
			
			image_xscale = -1;
			x-= 1;
		break;
	
	#endregion
	#region Death
		case snake.death:
		instance_destroy();
		//sprite_index = s_bat_death;
		
		break;
	#endregion
}