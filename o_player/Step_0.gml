/// @description Controling the players state
mask_index = player_idle;
#region Spell Initilization
if (global.item[0] == noone){ 
		global.spell_less = true;
}else{
		global.spell_less = false;
}
if instance_exists(global.item[0]){
	if (global.item[0].spell == "fire_ball_spell"){
		global.fire_spell = true;
	}else{
		global.fire_spell = false;	
	}
}
if instance_exists(global.item[0]){
	if (global.item[0].spell == "lightning_strike_spell"){
		global.lightning_spell = true;
	}else{
		global.lightning_spell = false;	
	}
}
if instance_exists(global.item[0]){
	if (global.item[0].spell == "water_slash_spell"){
		global.water_spell = true;
	}else{
		global.water_spell = false;	
	}
}
if instance_exists(global.item[0]){
	if (global.item[0].spell == "dark_ball_spell"){
		global.dark_orb_spell = true;
	}else{
		global.dark_orb_spell = false;	
	}
}
if instance_exists(global.item[0]){
	if (global.item[0].spell == "water_shield_spell"){
		global.water_shield_spell = true;
	}else{
		global.water_shield_spell = false;	
	}
}
if instance_exists(global.item[0]){
	if (global.item[0].spell == "wind_ark_spell"){
		global.wind_ark_spell = true;
	}else{
		global.wind_ark_spell = false;	
	}
}
if instance_exists(global.item[0]){
	if (global.item[0].spell == "Arrow"){
		global.arrow = true;
	}else{
		global.arrow = false;	
	}
}
//Spell Control
if(global.fire_spell == true){
global.spell_windup = o_windup_fire;
global.spell_mid = o_spell_fire;
global.spell_end = o_spell_end_fire;
global.spell_projectile = true;
global.spell_strike = false;
global.spell_shield = false;
global.spell_short_range = false;
}
if(global.water_spell == true){
global.spell_windup = o_windup_water;
global.spell_mid = o_spell_water_ball;
global.spell_end = o_spell_end_water;
global.spell_projectile = true;
global.spell_strike = false;
global.spell_shield = false;
global.spell_short_range = false;
}
if(global.arrow == true){
global.spell_windup = o_windup_water;
global.spell_mid = o_ranged_arrow;
global.spell_end = o_ranged_arrow_end;
global.spell_projectile = true;
global.spell_strike = false;
global.spell_shield = false;
global.spell_short_range = false;
}
if(global.lightning_spell == true){
global.spell_windup = o_windup_lightning;
global.spell_mid = o_spell_lightning_strike;
global.spell_end = o_spell_end_lightning;
global.spell_strike = true;
global.spell_projectile = false;
global.spell_shield = false;
global.spell_short_range = false;
}
if(global.dark_orb_spell == true){
global.spell_windup = o_windup_dark;
global.spell_mid = o_spell_dark_orb;
global.spell_end = o_spell_end_dark_orb;
global.spell_strike = false;
global.spell_projectile = true;
global.spell_shield = false;
global.spell_short_range = false;
}
if(global.water_shield_spell == true){
global.spell_windup = o_windup_wind_shield; //shield
global.spell_mid = o_spell_water_shield; // shield
global.spell_end = noone;
global.spell_strike = false; // false
global.spell_projectile = false;
global.spell_shield = true; // true
global.spell_short_range = false;
}
if(global.wind_ark_spell == true){
global.spell_windup = o_windup_wind; 
global.spell_mid = o_spell_wind_ark; 
global.spell_end = noone;
global.spell_strike = false; 
global.spell_projectile = false;
global.spell_shield = false;
global.spell_short_range = true;
}
#endregion
#region Set up controls for the player
right = keyboard_check(vk_right) || gamepad_button_check_pressed(4,gp_padr);
left = keyboard_check(vk_left) || gamepad_button_check_pressed(4,gp_padl);
up = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(4,gp_face1);
up_release = keyboard_check_released(vk_up) || gamepad_button_check_released(4,gp_face1);
down = keyboard_check(vk_down);


melee = keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(4,gp_face3);
range = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(4,gp_face4);
talk = keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(4,gp_shoulderr);

if (right)  facingright = true;
if (left) facingleft = true;

gamepad_set_vibration(4,1,1);

//Controlls for remote controller
if (abs(gamepad_axis_value(4,gp_axislh)) > 0.2){
	left = abs(min(gamepad_axis_value(4,gp_axislh),0));
	right = max(gamepad_axis_value(4,gp_axislh),0);
	controller = 1;
}
#endregion
#region Set player sprite
switch (global.character){
case main_char.T:
player_idle = s_player_idle;
player_run = s_player_walk;
player_jump = s_player_jump;
player_double_jump = s_player_jump;
player_landing = s_player_landing;
player_ledge_grab = s_player_ledge_grab;
player_falling = s_player_midair;
player_ranged_attack = s_player_ranged_attack;
player_shield_spell = s_player_shield_spell;
player_hurt = s_player_hurt;
player_exit = s_player_exit;
player_slash = s_player_slash;
player_slash_hb = s_player_slash_hb;
player_combo = s_player_combo;
player_combo_hb = s_player_combo_hb;
player_death = s_player_hurt;
player_voice_hurt = a_ouch;
//player_portrait = s_ui_portrait;
break;
case main_char.Beth:
player_idle = s_Beth_idle;
player_run = s_Beth_run;
player_jump = s_Beth_jump;
player_double_jump = s_Beth_jump;
player_landing = s_Beth_falling;
player_falling = s_Beth_falling;
player_slash = s_Beth_slash;
player_hurt = s_Beth_hurt;
player_death = s_Beth_death;
player_voice_hurt = a_bat;
player_ledge_grab = s_Beth_ledge;
player_slash_hb = s_Beth_slash_hb;
//player_portrait = s_beth_portrait;
player_combo = s_Beth_slash_combo;
player_combo_hb = s_Beth_slash_combo_hb;
player_exit = s_Beth_exit;
player_ranged_attack = s_Beth_idle;
break;
case main_char.Archer:
player_idle = s_archer_idle;
player_run = s_archer_run;
player_jump = s_archer_double_jump;
player_double_jump = s_archer_double_jump;
player_landing = s_archer_land;
player_falling = s_archer_land;
player_slash = noone;
player_hurt = s_archer_land;
player_death = s_archer_death;
player_voice_hurt = a_ouch;
player_ledge_grab = s_archer_hang;
player_slash_hb = noone;
//player_portrait = s_archer_portrait;
player_combo = noone;
player_combo_hb = noone;
player_exit = s_archer_idle;
player_ranged_attack = s_archer_ranged;
break;
}
#endregion
#region State Machine
switch(state){
#region Moving
	case player.moving:
	player_state_move();
	if (global.mana > 0){
	if ((keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(4,gp_face4)) and global.spell_less = false) state = player.ranged;
	}
	break;
#endregion
#region Ledge Grab
	case player.ledge_grab:
		if (down){
			state = player.moving;	
		}
		if (up) {
			state = player.moving;
			yspeed = jump_height;
		}
	break;
#endregion
#region Door
	case player.door:
	player_state_door();
	break;
#endregion
#region Hurt
	case player.hurt:
		if(o_player_stats.hp <=0) state = player.death;
		sprite_index = player_hurt;
		
		if (xspeed !=0){
			image_xscale = sign(xspeed);
		}
		if (!place_meeting(x,y+1,o_solid)){
			yspeed += gravity_acceleration;	
		}else{
			yspeed = 0;
			apply_friction(acceleration);
		}
		
		
		direction_move_bounce(o_solid);		
		
		//Change back to other states
		if (xspeed == 0 and yspeed == 0){
			//Check Health
			//if(o_player_stats.hp <=0) state = player.death;
			if (frozen = true){
				state = player.frozen;
			}else{		
				image_blend = c_white;
				state = player.moving;
			}
		}
			
	
	break;
#endregion
#region Death
	case player.death:
		player_state_death();
		
	break;
#endregion
#region Slash
	case player.slash:
	
	//yspeed = jump_height;
	
	player_state_slash();
	break;
#endregion
#region Combo
	case player.combo:
	
	player_state_combo();
	break;
#endregion
#region Ranged
	case player.ranged:
	player_state_attack_ranged();
	var ranged_pose = noone;
	if (global.spell_shield = true) ranged_pose = s_player_shield_spell;
	if (global.spell_strike = true) ranged_pose = player_ranged_attack;
	if (global.spell_projectile = true) ranged_pose = player_ranged_attack;
	if (global.spell_short_range = true) ranged_pose = player_ranged_attack;
	if (sprite_index != ranged_pose){
		sprite_index = ranged_pose;
		image_index = 0;
		if(global.facingdir) = 1{
			direction = 0;
			instance_create_layer(x,y,"Spells",global.spell_windup);
		}else{
			direction = 180;
			instance_create_layer(x,y,"Spells",global.spell_windup);
		}
		global.mana -= 1;
		//instance_create_layer(x,y,"Spells",global.spell_windup)
}
	
	break;
#endregion
#region Frozen
	case player.frozen:
		
		switch wait_script(){
			//freeze the player
			case 1: 
			wait = 120
			instance_destroy(o_ice_block);
			instance_create_layer(o_player.x,o_player.y,"Spells",o_ice_block_cracked);
			break;
			case 2:
			wait = 60;
			//Change back to other states
			case 3: 
			//Check Health
			instance_destroy(o_ice_block_cracked);
			if(o_player_stats.hp <=0){
				state = player.death;
			}else{
				image_blend = c_white;
				state = player.moving;
				state_code = 0;
			}
			
		break;
		}
		
	break;
#endregion
#region wait
	case player.wait:

		if(instance_exists(o_dialogue)){
			o_player.xspeed = 0;
			o_player.yspeed = 0;
		}else{
			state = player.moving;
		}
		
	break;
#endregion
}
#endregion

