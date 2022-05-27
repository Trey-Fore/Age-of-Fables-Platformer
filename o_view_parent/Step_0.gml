/// @description  Update the view position
__view_set( e__VW.XView, 0, (x-__view_get( e__VW.WView, 0 )/2)+irandom_range(-screenshake, screenshake ));
__view_set( e__VW.YView, 0, (y-__view_get( e__VW.HView, 0 )/2)+irandom_range(-screenshake, screenshake ));

// Move the view towards the target point
x = lerp(x, target[? "x"], spd);
y = lerp(y, target[? "y"], spd);

