/// @description Insert description here
// You can write your code in this editor
global.health2-=1
tempx = obj_char_2.x
tempy = obj_char_2.y
ratio = pi/9
if velocity<1
	ratio = pi/4
instance_destroy(obj_char_2)

for (i=1; i<9; i++)
{
	var this = instance_create_layer(tempx,tempy,"Foreground",obj_char2_shatter);
	this.image_angle = random_range(0,360)
	this.rotational = 10*sign(random_range(-20,20))
	this.angle = angle-pi/2+i*pi/4+random_range(-pi/4, pi/4)
	this.spd = random_range(1.6,4)
	this.scale = random_range(0.5,1.2)
}
instance_create_layer(x,y,"Instances",obj_char2_reset)