/// @description execute state
if (hp < 1) state = spider.death;
switch (state){
	#region Idle
	case spider.idle:
		if (instance_exists(o_player)){
			var dis = distance_to_object(o_player);
			if (dis < sight and alarm[0] <= 0){
				image_speed = .5;
				
				if(o_player.x != x){
					image_xscale = sign(o_player.x - x);	
				}
			}
		}
	break;
	#endregion
	#region Jump
	case spider.jump:
		image_index = image_number -1;
		if (!place_meeting(x, y+1, o_solid)){
			yspeed += gravity_acceleration;	
		}else{
			yspeed = 0;
			
			apply_friction(acceleration);
			
			if(xspeed == 0 and yspeed == 0){
				state = spider.idle;
				alarm[0] = 15;
				image_speed = 0;
				image_index = 0;
			}
		}
		if (xspeed != 0) {
			image_xscale = sign(xspeed);
		}
		move(o_solid);
	break;
	#endregion
	#region Death
		case spider.death:
		instance_destroy();
		//sprite_index = s_bat_death;
		
		break;
	#endregion
}