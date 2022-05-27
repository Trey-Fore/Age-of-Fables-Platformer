// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inventory_add_item(){
///arg item
var _item = singleton(argument0);
var _item_index = array_find_index(_item, global.inventory);
if _item_index == -1 {
	var _array_size = array_length_1d(global.inventory);
	for (var i = 0; i < _array_size; i++){
		if global.inventory[i] = noone{
			global.inventory[i]	= _item;
			return true;
		}
		
	}
}else{
	return true;	
}

return false;
}