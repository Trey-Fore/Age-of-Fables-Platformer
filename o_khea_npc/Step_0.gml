//check for player
if(point_distance(x,y,o_player.x, o_player.y) < 64){
		if (!instance_exists(o_talk_ui)){
			instance_create_layer(x,y-30,"Spells",o_talk_ui);	
		}
	}
if(point_distance(x,y,o_player.x, o_player.y) < 64 && o_player.talk){
	if (!instance_exists(o_dialogue)){
		if(o_player.x != x){
			image_xscale = sign(o_player.x - x);	
		}
		o_player.state = player.wait;
		dialogue(message,portrait);
	}
}