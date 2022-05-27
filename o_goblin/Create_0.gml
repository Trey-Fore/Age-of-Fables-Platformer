/// @description Initialize Spider
hp = 1;
//Set spider to be still

image_speed = .5;
image_index = 0;

sight = 64;
max_speed = 4;
acceleration = 1.5;
gravity_acceleration = .5;

enum goblin {
	idle,
	jump
}

state = spider.idle;

essence = c_orange;