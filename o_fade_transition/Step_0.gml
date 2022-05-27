/// @description Control the fade

if (image_alpha != target_image_alpha) {
	//approach the target image alpha
	image_alpha = approach(image_alpha,target_image_alpha,.2);
} else {
	if(image_alpha ==1){
			//go to next room
			target_image_alpha = 0;
			room_goto_next();	
		}else{
			instance_destroy();
	}
}