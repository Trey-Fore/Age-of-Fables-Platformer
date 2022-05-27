/// @description Initialize the skele

enum skele{
	idle,
	move_right,
	move_left,
	stall,
	death,
	detect,
	attack
}
sight = 128;
attack_sight = 32;
state = skele.idle//choose(skele.move_right, skele.move_left);
previous_state = noone;
essence = c_white;
hp = 1;
player_hit_by_attack = ds_list_create();