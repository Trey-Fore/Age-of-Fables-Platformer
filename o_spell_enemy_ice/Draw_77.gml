if (place_meeting(x,y,o_solid)){
	
	instance_destroy();
	instance_create_layer(x,y,"Spells",o_spell_end_water);	
}