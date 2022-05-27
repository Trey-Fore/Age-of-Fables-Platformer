/// @description initialize player variables

max_speed = 3;
xspeed = 0;
yspeed = 0;
acceleration = 1;
gravity_acceleration = .5;
jump_height = -7;
grab_width = 18;//18
controller = 0;
jump_counter = 0;
firingdelay = 0;
playerdir = 0;
hit_by_attack = ds_list_create();
frozen = false;
state_code = 0
wait = 0; 
global.facingdir = 0;
inair = false;
djump = false;

player_idle = noone;
player_run = noone;
player_jump = noone;
player_double_jump = noone;
player_landing = noone;
player_ledge_grab = noone;
player_falling = noone;
player_ranged_attack = noone;
player_shield_spell = noone;
player_hurt = noone;
player_exit = noone;
player_slash = noone;
player_slash_hb = noone;
player_combo = noone;
player_combo_hb = noone;
player_death = noone;
player_voice_hurt = noone;
player_portrait = noone;




enum player {
	moving,
	ledge_grab,
	door,
	hurt,
	death,
	slash,
	combo,
	ranged,
	frozen,
	wait
}
enum main_char{
	T,
	Beth,
	Archer
}
//global.character = main_char.Archer;
state = player.moving;
sprite_index = player_idle;
