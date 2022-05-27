// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_door(){
sprite_index = player_exit;
		//Fade Out
		if(image_alpha > 0) {
			image_alpha -= .05;	
		}else{
				// Go to the next room
				room_goto_next();
		}
		
}