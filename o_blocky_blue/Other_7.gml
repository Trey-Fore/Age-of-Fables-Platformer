if (state = blocky.death) instance_destroy();
if (state = blocky.detect){
	image_xscale = sign(o_player.x - x);
	if (image_xscale = -1) state = blocky.move_left;
	if (image_xscale = 1) state = blocky.move_right;	
}
