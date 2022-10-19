/// @description Insert description here
// You can write your code in this editor
if instance_number(obj_ball_white)>0 && instance_number(obj_char_2)>0
{
var origin = obj_char_2
var x_orig = origin.x
var y_orig = origin.y

var target = obj_ball_white
var x_dest = target.x
var y_dest = target.y

x = x_orig
y = y_orig

var _angle = point_direction(x_orig, y_orig, x_dest, y_dest);
var _width = sprite_width


if (distance_to_object(obj_ball_white)<global.hitDistance)
{
	for (var i = 1;
	distance_to_point(x_dest,y_dest)+300 > (i*_width); i++)
	{
		draw_sprite_ext(sprite_index, image_index, x+lengthdir_x(i*_width, _angle),
						y+lengthdir_y(i*_width,_angle),
						1, 1, _angle, image_blend, global.invisDistance-global.invisDistance*distance_to_object(obj_ball_white)/global.hitDistance)
	
	}
	
}
}