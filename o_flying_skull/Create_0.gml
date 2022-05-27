/// @description Initialize the flying skull
hp = 1;
enum flyingskull{
	move_right,
	move_left,
	death,
	ranged
}

state = choose(flyingskull.move_right, flyingskull.move_left);
sight = 128;
essence = c_white;
spell_cooldown = room_speed*2; ///2;