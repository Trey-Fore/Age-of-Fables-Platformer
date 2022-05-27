if (state = skele.death) instance_destroy();
if (state = skele.detect){
	image_xscale = sign(o_player.x - x);
	if (image_xscale = -1) state = skele.move_left;
	if (image_xscale = 1) state = skele.move_right;	
}
