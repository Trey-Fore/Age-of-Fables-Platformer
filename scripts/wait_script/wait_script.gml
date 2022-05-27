// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wait_script(){
if wait > 0{
	wait -=1;
	return -1;
}else{
	state_code += 1;
	return state_code
}
}