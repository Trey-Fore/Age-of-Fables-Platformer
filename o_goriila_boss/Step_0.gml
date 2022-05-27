/// @description Execute the state

switch (state) {
	#region Move Right
		case gorrilla.move_right:
			var wall_at_right = place_meeting(x+1,y,o_solid);
			var ledge_at_right = !position_meeting(bbox_right + 1, bbox_bottom + 1, o_solid);
			if(wall_at_right || ledge_at_right){
				state = gorrilla.move_left;	
			}
			
			image_xscale = 1;
			x+= 1;
		break;
	#endregion
	#region Move Left
		case gorrilla.move_left:
			var wall_at_left = place_meeting(x-1,y,o_solid);
			var ledge_at_left = !position_meeting(bbox_left - 1, bbox_bottom + 1, o_solid);
			if(wall_at_left || ledge_at_left){
				state = gorrilla.move_right;	
			}
			
			image_xscale = -1;
			x-= 1;
		break;
	
	#endregion
}