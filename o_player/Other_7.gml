/// @description Insert description here


if (state == player.ranged && global.spell_projectile = true){
	with (instance_create_layer(x,y,"Spells", global.spell_mid)){
		if(global.facingdir) = 1{
			direction = 0;
		}else{
			direction = 180;
		}
		speed = 5;
	}
}

if (state == player.ranged && global.spell_strike = true){
		facing = 0;
		if(global.facingdir) = 1{
			direction = 0;
			facing = x+64;
			instance_create_layer(facing,y,"Spells", global.spell_mid);
		}else{
			direction = 180;
			facing = x-64;
			instance_create_layer(facing,y,"Spells", global.spell_mid);
		}
		speed = 0;
	
}

if (state == player.ranged && global.spell_shield = true){
		facing = 0;
		if(global.facingdir) = 1{
			direction = 0;
			facing = x;
			instance_create_layer(facing,y,"Spells", global.spell_mid);
		}else{
			direction = 180;
			facing = x;
			instance_create_layer(facing,y,"Spells", global.spell_mid);
		}
		speed = 0;
	
}

if (state == player.ranged && global.spell_short_range = true){
		facing = 0;
		if(global.facingdir) = 1{
			direction = 0;
			facing = x;
			instance_create_layer(facing,y,"Spells", global.spell_mid);
		}else{
			direction = 180;
			facing = x;
			instance_create_layer(facing,y,"Spells", global.spell_mid);
		}
		speed = 0;
	
}

if (state == player.slash || state == player.combo || state == player.ranged){
	
	sprite_index = player_idle;
	state = player.moving;	
}




