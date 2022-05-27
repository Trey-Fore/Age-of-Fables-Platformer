/// @description Insert description here
// You can write your code in this editor

script_execute(state);
camera_set_view_size(view_camera[0],view_w,view_h);

var _round = view_w/surface_get_width(application_surface);
camera_set_view_pos(view_camera[0],round_n(view_x,_round),round_n(view_y,_round));
//camera_set_view_pos(view_camera[0],view_x,view_y);

x = lerp(x, target[? "x"], spd);
y = lerp(y, target[? "y"], spd);

//Follow Player
view_x = (x - view_w/2)+irandom_range(-screenshake, screenshake);
view_y = (y - view_h/2)+irandom_range(-screenshake, screenshake);

view_x=clamp(view_x,0,room_width-view_w);
view_y=clamp(view_y,0,room_height-view_h);
