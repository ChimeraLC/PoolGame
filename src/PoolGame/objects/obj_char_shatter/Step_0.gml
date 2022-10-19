/// @description Insert description here
//shatter pieces
if lifetime==40
{
	x+=18*cos(angle)
	y+=18*sin(angle)
	image_xscale = scale
	image_yscale = scale
}
if lifetime>0
{
	image_alpha = lifetime/max_lifetime
	lifetime-=1
	image_angle+=rotational
	x+=spd*cos(angle)
	y+=spd*sin(angle)
}
if lifetime==0|| (room_speed<5)
instance_destroy()