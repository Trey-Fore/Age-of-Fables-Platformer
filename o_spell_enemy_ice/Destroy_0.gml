repeat (irandom_range(4,7)){
	var random_x = irandom_range(-3,3);
	var random_y = irandom_range(-3,3);
	var particle = instance_create_layer(x + random_x, y + random_y, "Enemies", o_particle);
	particle.image_blend = c_aqua;
	particle.image_speed = .25;
}