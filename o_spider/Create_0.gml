/// @description Initialize Spider
hp = 1;
//Set spider to be still

image_speed = 0;
image_index = 0;

sight = 128;
max_speed = 4;
acceleration = 1.5;
gravity_acceleration = .5;

enum spider {
	idle,
	jump,
	death
}

state = spider.idle;
essence = c_fuchsia;