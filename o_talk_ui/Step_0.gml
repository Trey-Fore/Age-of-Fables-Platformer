/// @description Insert description here
if(point_distance(x,y,o_player.x, o_player.y) > 64){
instance_destroy();
}

++move_timer;
y += move_amount;

if (move_timer > move_max_timer){
		move_timer = 0;
		move_amount *= -1;
}