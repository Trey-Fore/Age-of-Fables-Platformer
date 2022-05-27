/// @description Collide with an enemy

//Check if we are above them

var above_enemy = y <other.y + yspeed;
var falling = yspeed > 0;

if (above_enemy and (falling or state == player.ledge_grab)){
	if (!place_meeting(x,yprevious, o_solid)){
		y = yprevious;	
	}
	//Get as close to the enemy as possible
	while (!place_meeting(x,y+1, other)) {
		y++;	
	}
	
	with (other){
		--self.hp;
		//instance_destroy;
	}
		//Bounce off the enemy
		yspeed = -(16/3);
		audio_play_sound(a_step,6,false);
} else {
	take_damage();	
	
}