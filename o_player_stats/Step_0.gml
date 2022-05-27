/// @description Begin the game
action = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(4,gp_face1);
menu_right = keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(4,gp_shoulderr);
menu_left = keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(4,gp_shoulderl);
melee = keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(4,gp_face3);
range = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(4,gp_face4);

room_selection = r_dusknights_1;

if (global.character == main_char.Beth){
global.player_portrait = s_beth_portrait;	
}
if (global.character == main_char.T){
global.player_portrait = s_ui_portrait;	
}
if (global.character == main_char.Archer){
global.player_portrait = s_archer_portrait;	
}
if paused_{
	
	last_xaxis = lxaxis;
	last_yaxis = lyaxis;

	lxaxis = gamepad_axis_value(device, gp_axislh);
	lyaxis = gamepad_axis_value(device, gp_axislv);

	
	
	var _array_size = array_length_1d(global.inventory);
	if ((lxaxis > 0 && last_xaxis <= 0) or menu_right){
		item_index = min(item_index	+1, _array_size -1);
		audio_play_sound(a_menu_move,1,false);
	}
	if ((lxaxis < 0 && last_xaxis >= 0) or menu_left){
		item_index = max(item_index	-1,0);
		audio_play_sound(a_menu_move,1,false);
	}
	if action{
		global.item[0] = global.inventory[item_index];
		audio_play_sound(a_menu_select,3,false);
	}
	//if range{
	//	global.item[1] = global.inventory[item_index];
	//	audio_play_sound(a_menu_select,3,false);
	//}
}
if keyboard_check_pressed(vk_tab) or gamepad_button_check_pressed(4,gp_start) or gamepad_button_check_pressed(4,gp_face2){
	if paused_ {
		audio_play_sound(a_unpause,1,false);
		paused_ = false;	
		if sprite_exists(paused_sprite_){
			sprite_delete(paused_sprite_);	
		}
		instance_activate_all();
		state = player.moving;
	}else{
		paused_ = true;
		paused_sprite_ = sprite_create_from_surface(application_surface,0,0,view_wport[0], view_hport[0], false, false,0,0);
		var _array_size = array_length_1d(global.inventory);
		instance_deactivate_all(true);
		for (var i = 0; i<_array_size; i++){
		instance_activate_object(global.inventory[i]);	
		audio_play_sound(a_pause,1,false);
		}
		//instance_activate(); use this is needing something to run while paused for menu
		
		//instance_activate_object(o_player);
		instance_activate_object(o_solid);
		//o_player.xspeed = 0;
		//o_player.yspeed = 0;
		
	}
}

if ((keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(4,gp_face1)) and room == r_title){
	room_goto(room_selection); ///switch this to test room when needed
	audio_stop_sound(a_title);
	audio_play_sound(a_cave,10,true);
}

//Change music if on main too long
if (!audio_is_playing(a_title) and !audio_is_playing(a_cave)){
	audio_play_sound(a_cave, 10, true);	
}

var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
   {
   if gamepad_is_connected(i) global.gp[i] = true else global.gp[i] = false;
   }
   
if mouse_check_button_pressed(mb_left){
	if window_get_fullscreen(){
		window_set_fullscreen(false);
	}else{
		window_set_fullscreen(true);
   }
}




//if (global.item[0].spell == "lightning_strike_spell") global.lightning_spell = true;
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

layer_x("Backgrounds_5",cam_x * 0.40);
layer_x("Backgrounds_4",cam_x * 0.45);
layer_x("Backgrounds_3",cam_x * 0.50);
layer_x("Backgrounds_2",cam_x * 0.55);
layer_x("Backgrounds_1",cam_x * 0.60);

layer_y("Backgrounds_5",cam_y * 0.40);
layer_y("Backgrounds_4",cam_y * 0.45);
layer_y("Backgrounds_3",cam_y * 0.50);
layer_y("Backgrounds_2",cam_y * 0.55);
layer_y("Backgrounds_1",cam_y * 0.60);

   