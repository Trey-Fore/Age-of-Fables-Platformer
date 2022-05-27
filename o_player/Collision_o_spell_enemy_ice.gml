/// @description Insert description here
// You can write your code in this editor
if (state != player.hurt){
	state = player.hurt;
	
	audio_play_sound(a_ouch, 8, false);
	image_blend = make_color_rgb(153,255,255);
	instance_create_layer(o_player.x,o_player.y,"Spells",o_ice_block);
	
	yspeed = -6;
	xspeed = (sign(x - other.x) * 5); //adjust 8 for bigger fling
	
	move(o_solid);
	frozen = true;
	
	if (instance_exists(o_player_stats)){
		o_player_stats.hp -= 1;	
	}
}