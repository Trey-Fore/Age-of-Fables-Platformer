/// @description Initialize the snake
hp = 1;
enum snake{
	move_right,
	move_left,
	death
}

state = choose(snake.move_right, snake.move_left);

essence = c_green;