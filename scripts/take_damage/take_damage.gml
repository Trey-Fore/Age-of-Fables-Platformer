// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//@description take damage
function take_damage(){
if (state != player.hurt){
	state = player.hurt;
	if (instance_exists(o_player_stats)){
		o_player_stats.hp -= 1;	
	}
	if(o_player_stats.hp <=0) state = player.death;
	if (state != player.death){
	audio_play_sound(player_voice_hurt, 8, false);
	image_blend = make_color_rgb(220,150,150);
	yspeed = -6; //6
	xspeed = (sign(x - other.x) * 8); //adjust 8 for bigger fling
	}else{
	yspeed = 0;	
	}
	move(o_solid);
}
}