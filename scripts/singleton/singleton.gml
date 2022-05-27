// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function singleton(){
	var _object = argument0;
	if instance_exists(_object){
		return _object.id;
	}else{
		var _instance = instance_create_layer(0,0,"Instances",_object);
		_instance.persistent = true;
		return _instance;
	}
}