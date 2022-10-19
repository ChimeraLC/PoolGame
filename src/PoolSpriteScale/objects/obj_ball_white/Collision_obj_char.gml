/// @description Insert description here
// You can write your code in this editor
global.health-=1
tempx = obj_char.x
tempy = obj_char.y
ratio = pi/9
if velocity<1
	ratio = pi/4instance_destroy(obj_char)
for (i=1; i<9; i++)
{
	var this = instance_create_layer(tempx,tempy,"Foreground",obj_char_shatter);
	this.image_angle = random_range(0,360)
	this.rotational = 10*sign(random_range(-20,20))
	this.angle = angle-pi/2+i*ratio+random_range(-pi/4, pi/4)
	this.spd = random_range(1.6,4)
	this.scale = random_range(0.5,1.2)
}
instance_create_layer(x,y,"Instances",obj_char_reset)