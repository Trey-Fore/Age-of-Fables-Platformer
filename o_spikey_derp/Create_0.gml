/// @description Initialize the skele

enum spikey_derp{
	idle,
	move_right,
	move_left,
	stall,
	death,
	detect,
}
sight = 128;
attack_sight = 32;
state = spikey_derp.idle//choose(skele.move_right, skele.move_left);
previous_state = noone;
essence = c_black;
hp = 1;
player_hit_by_attack = ds_list_create();