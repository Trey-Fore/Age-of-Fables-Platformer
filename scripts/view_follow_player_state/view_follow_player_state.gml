/// @description view_follow_elizabeth_state()
/// @function view_follow_elizabeth_state
function view_follow_player() {
	/*
	    This state makes the view follow Elizabeth.
	*/

	if (instance_exists(o_player)) {
	    target[? "x"] = o_player.x;
	    target[? "y"] = o_player.y;
	}



}
