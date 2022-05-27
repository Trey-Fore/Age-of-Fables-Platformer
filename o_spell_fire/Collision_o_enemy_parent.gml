instance_destroy();
with (other){
	--self.hp;
	instance_create_layer(x,y,"Spells",o_spell_end_fire);
}