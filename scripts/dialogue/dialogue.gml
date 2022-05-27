// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dialogue(sent,portrait){
//@param 1 array
//@param 2 portrait
//var sent = argument0;
//var portrait = argument1;

var text = instance_create_layer(0,0,"Spells",o_dialogue);

text.portrait = portrait;
for (i=0; i <array_length_1d(sent); i++)
{
	text.message[i] = sent[i];	
}

}