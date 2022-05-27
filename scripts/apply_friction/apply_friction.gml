// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//@description apply_friction(amount)
function apply_friction(){
var amount = argument0;

//first check to see if we are moving
if (xspeed !=0){
	if(abs(xspeed) - amount > 0){
		xspeed -= amount * image_xscale;
	} else {
		xspeed = 0;	
	}
}
}