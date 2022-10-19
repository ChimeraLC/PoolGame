/// @description Insert description here
// You can write your code in this editor
lifetime-=1

if (lifetime==0)
{
	
	instance_destroy(obj_ball_white)
	if(instance_number(obj_char)>0)
	{
		obj_char.x=224
		obj_char.y=512
	}
	else
	{
	instance_create_layer(224,512,"Instances",obj_char)
	}
	instance_create_layer(800,512,"Instances",obj_ball_white)
	instance_create_layer(1376,512,"Instances",obj_char_2)
	global.gameTime = 0
	global.scale = 1
	if global.health2==0
	{
		room_goto(Win_char1)
	}
	instance_destroy()
}