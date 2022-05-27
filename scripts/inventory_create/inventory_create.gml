// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inventory_create(){
///@arg size
var _size = argument0;
global.inventory = [];
var i = 0;
repeat (_size){
	global.inventory[i++] = noone;	
}
}