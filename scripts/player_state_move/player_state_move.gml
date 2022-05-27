// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_move(){
if (xspeed == 0) sprite_index = player_idle;
if (xspeed != 0 and inair != true) sprite_index = player_run;
		
	//Check if player is on the ground
	if (!place_meeting(x, y+1, o_solid)){
		inair = true;
		yspeed += gravity_acceleration;
				
	

		//Player is in the air
		if(yspeed < 0 and djump = false)sprite_index = player_jump;
		if(yspeed > 0)sprite_index = player_landing;
		
		
		//Control the jump height ///////Update -6 to effect height of jump/////////
		if (up_release and yspeed < -6) {
			//effects less of a jump
			yspeed = -3;
		}
		
		//double jump
		if (up and jump_counter == 1){
			djump = true;
			sprite_index = player_double_jump;
			jump_counter = 2;
			yspeed = jump_height;
			djump = false;
			audio_play_sound(a_jump,5,false);
		}
		
	} else {
		yspeed = 0;
		jump_counter = 0;
		inair = false;
		//Jumping code
		if (up){
			jump_counter = 1;
			yspeed = jump_height;
			audio_play_sound(a_jump,5,false);
			
		}
		
	}
	//Change direction of sprite
	if (xspeed != 0){
		image_xscale = sign(xspeed);
		global.facingdir = sign(xspeed);
	}
	//Check for moving left or right
	if (right or left){
		xspeed += (right - left) * acceleration;
		xspeed = clamp(xspeed, -max_speed, max_speed);
	}
	else {
		apply_friction(acceleration);
	}
	
	if (place_meeting(x,y + yspeed + 1, o_solid) and yspeed > 0) {
		audio_play_sound(a_step, 6, false);	
	}
	
	move(o_solid);
	
	//Check for ledge grab state
	var falling = y- yprevious >0;
	//could change to make magnet skill grab_width mentioned in ledge grab vid
	var wasnt_wall = !position_meeting(x + grab_width * image_xscale, yprevious, o_solid);
	var is_wall = position_meeting(x+grab_width * image_xscale, y, o_solid);
	
	if (falling and wasnt_wall and is_wall) {
		xspeed = 0;
		yspeed = 0;
		
		//Move against the ledge
		while (!place_meeting(x + image_xscale, y, o_solid)) {
		x += image_xscale;	
		}
		
		//Check Vertical Position
		while(position_meeting(x + grab_width * image_xscale, y - 1, o_solid)){
			y -=1;
		}
		
		//Change sprite and state
		sprite_index = player_ledge_grab;
		state = player.ledge_grab;
		
		audio_play_sound(a_step,6,false);
	}
	
	if (melee) state = player.slash;
	//if (keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(4,gp_face4)) state = player.ranged;
}