/// @description Insert description here
if instance_exists (o_player){ 
	instance_create_layer(o_player.x, o_player.y,"Player",obj_display_manager);
	}