/// @description Initialize the bat
hp = 1;
//Movement

xspeed = 0;
yspeed = 0;
max_speed = 1.5;

enum bat {
	idle,
	chase,
	death
}

state = bat.idle;
sight = 180;

essence = c_purple;
