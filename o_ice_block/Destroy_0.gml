repeat (irandom_range(3,6)){
	var random_x = irandom_range(-2,2);
	var random_y = irandom_range(-2,2);
	var particle = instance_create_layer(x + random_x, y + random_y, "Spells", o_particle);
	particle.image_blend = c_white;
	particle.image_alpha = .75;
	particle.image_speed = .25;
}