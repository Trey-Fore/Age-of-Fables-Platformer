// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inventory_use_item(){
//@arg input
//@arg action

var _input = argument0;
var _item = argument1;

if _input{
	if instance_exists(_item){
		spell_state	= _item.spell_state;
	}
}
}