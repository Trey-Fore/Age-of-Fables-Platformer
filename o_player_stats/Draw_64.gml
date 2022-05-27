/// @description Draw Gui based on the room
if sprite_exists(paused_sprite_){
	draw_sprite_ext(paused_sprite_,0,0,0,paused_sprite_scale,paused_sprite_scale,0,c_white,1);
	draw_set_alpha(0.6);
	draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}else{
	
}

if (room = r_title){
	draw_set_halign(fa_center);
	draw_set_font(f_title);
	draw_text_color(room_width / 2 + 4, 24 + 6, "Tales", c_black,c_black,c_black,c_black,1)
	draw_text_color(room_width / 2, 24, "Tales", c_white,c_white,c_white,c_white,1)
	draw_text_color(room_width / 2 + 4, 24 + 6+40, "of Adventure", c_black,c_black,c_black,c_black,1)
	draw_text_color(room_width / 2, 24+40, "of Adventure", c_white,c_white,c_white,c_white,1)
	
	draw_set_font(f_start);
	draw_text_color(room_width / 2 + 1, room_height - 48 + 1, "Press B to play", c_black,c_black,c_black,c_black,.7)
	draw_text_color(room_width / 2, room_height - 48, "Press B to play", c_white,c_white,c_white,c_white,1)
	
	/*if(gamepad_is_connected(4)){
		draw_text(160,60, "Slot 4 is connected");	
	}else{
		draw_text(160,60, "Slot 4 is NOT connected");	
	}
	draw_text_color(room_width / 2, room_height - 60, string(global.gp), c_white,c_white,c_white,c_white,1)
	*/
}

if (room != r_title){
	//Draw score
	draw_set_font(f_score);
	draw_set_halign(fa_right);
	
	if(gamepad_is_connected(4)){
	draw_sprite_ext(s_p1,0,116,38,1,1,0,c_white,1);
	}
	
	//draw button ui aid
	draw_sprite(s_ui_action_indicator,0,28,display_get_gui_height()-28)
	//jump
	if(gamepad_button_check_pressed(4,gp_face1))draw_sprite(s_ui_action_indicator,4,28,display_get_gui_height()-28);
	//melee
	if(gamepad_button_check_pressed(4,gp_face3))draw_sprite(s_ui_action_indicator,1,28,display_get_gui_height()-28);
	//spell
	if(gamepad_button_check_pressed(4,gp_face4))draw_sprite(s_ui_action_indicator,2,28,display_get_gui_height()-28);	
	draw_sprite(s_ui_player, 0, 4,4);
	draw_sprite(global.player_portrait,0,21,15);
	draw_text(88,6,string(global.coins));
	//draw_text(64,96,string(o_player.state));
	//draw_text(64,64,string(o_player.wait));
	draw_set_halign(fa_left);
	//Draw Health
	for(var i = 1; i <= hp; ++i){
		draw_sprite_ext(s_ui_heart, 0, 25 + (i*21),28,1,1,0,c_white,1);	
	}
	for(var i = 1; i <= global.mana; ++i){
		draw_sprite_ext(s_ui_mana, 0, 31 + (i*9),44,1,1,0,c_white,1);	
	}
	//draw_sprite(s_menu_box, 0,36,display_get_gui_height()-32);
	if instance_exists(global.item[0]){
		draw_sprite(global.item[0].sprite_, 0, 20,40);
	}else{
		
		draw_sprite(s_plus_ui,-1, 20,40);
	}
	
	//if instance_exists(global.item[1]) draw_sprite(global.item[1].sprite_, 0, 52, display_get_gui_height()-16);
	
}
inventory_draw(37,56);
	