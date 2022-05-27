repeat (irandom_range(8,12)){
	var random_x = irandom_range(-6,6);
	var random_y = irandom_range(-6,6);
	var particle = instance_create_layer(x + random_x, y + random_y, "Spells", o_particle);
	particle.image_blend = c_aqua;
	particle.image_alpha = .75;
	particle.image_speed = .25;
}
repeat (irandom_range(8,12)){
	var random_x = irandom_range(-6,6);
	var random_y = irandom_range(-6,6);
	var particle = instance_create_layer(x + random_x, y + random_y, "Spells", o_particle);
	particle.image_blend = c_white;
	particle.image_alpha = .75;
	particle.image_speed = .25;
}