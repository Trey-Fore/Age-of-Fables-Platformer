/// @description Initialize the snake
hp = 1;
enum rolly{
	move_right,
	move_left,
	death
}

state = choose(rolly.move_right, rolly.move_left);

essence = c_fuchsia;