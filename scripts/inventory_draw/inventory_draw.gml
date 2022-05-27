// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inventory_draw(){
//@arg x
//@arg y
if not o_player_stats.paused_ exit;
var _x = argument0;
var _y = argument1;
var _array_size = array_length_1d(global.inventory);
	for(var i=0; i<_array_size; i++){
		var _box_x = _x	+i*32;
		var _box_y = _y;
		draw_sprite(s_menu_box,0,_box_x,_box_y);
		var _item = global.inventory[i];
		if instance_exists(_item){
			draw_sprite(_item.sprite_,0,_box_x + 16, _box_y + 16);
		}
		
		if i == item_index {
			draw_sprite(s_pause_cursor, image_index/8,_box_x,_box_y);
			if instance_exists(_item){
				draw_text(_x+4,_y+36, _item.description_);
				var _description_height = string_height(_item.description_);
			}
		}
	}
	//draw_sprite(s_menu_box, 0,4,4);
	//draw_sprite(s_menu_box, 0,36,4);
	//if instance_exists(global.item[0]) draw_sprite(global.item[0].sprite_, 0, 20, 20);
	//if instance_exists(global.item[1]) draw_sprite(global.item[1].sprite_, 0, 52, 20);
}