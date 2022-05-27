/// @description Initialize some variables
global.character = main_char.Beth;
global.player_portrait = noone;
counter = 0;
reset = 1;
lyaxis = 0;
lxaxis = 0;
device = 4;
gamepad_set_axis_deadzone(4, 0.25);

room_selection = noone;
hp = 3;
max_hp = 3;
global.coins = 0;
global.mana = 0;
global.max_mana = 7;
global.spell_less = true;

//loaded spells
global.water_spell = false;
global.fire_spell = false;
global.lightning_spell = false;
global.dark_orb_spell = false;
global.water_shield_spell = false;
global.wind_ark_spell = false;
global.arrow = false;

//spell animation type
global.spell_projectile = false;
global.spell_strike = false;
global.spell_shield = false;
global.spell_short_range = false;

display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

///Pausing the game
paused_ = false;
paused_sprite_ = noone;
paused_sprite_scale = display_get_gui_width()/view_wport[0];

//Start the Music
audio_play_sound(a_title, 10, false);

//randomseed for game
randomize();

global.item[0] = noone;
global.item[1] = noone;
item_index = 0;

inventory_create(6);
if object_exists(o_player){
if (global.character == main_char.Archer){
inventory_add_item(o_arrow_menu_spell);
}
if (global.character == main_char.Beth){
inventory_add_item(o_fire_menu_spell);
inventory_add_item(o_dark_menu_spell);
}
if (global.character == main_char.T){
inventory_add_item(o_fire_menu_spell);
inventory_add_item(o_lightning_menu_spell);
inventory_add_item(o_water_menu_spell);
inventory_add_item(o_dark_menu_spell);
inventory_add_item(o_wind_menu_spell);
inventory_add_item(o_water_shield_menu_spell);
}
}
