// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_find_index(){
///@arg value
///@arg array
var _value = argument0;
var _array = argument1;
var _array_size = array_length_1d(_array);
//look for value
for(var i=0; i< _array_size; i++){
	if _value == _array[i] return i;	
}


return -1;
}