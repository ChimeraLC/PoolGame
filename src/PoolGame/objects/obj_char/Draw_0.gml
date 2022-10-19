/// @description Insert description here
// You can write your code in this editor
draw_self()

//draw_line(x-32, y-50, min(x+32,x+32-64*global.hitTime/global.hitTimeMax), y-50)

if keyboard_check_direct(vk_lalt) && instance_number(obj_ball_white)>0
{
	pull = global.hitTime*global.pullCoef
	point_angle = pi/180*point_direction(x,y,obj_ball_white.x,obj_ball_white.y)
	draw_sprite_ext(spr_stick,0, x-pull*cos(point_angle), y+pull*sin(point_angle), 1, 1, 
	point_direction(x,y,obj_ball_white.x,obj_ball_white.y),-1,0.6)
}

if global.hitTime <0  && instance_number(obj_ball_white)>0
{
	pull = 75+25*global.hitTime
	point_angle = pi/180*point_direction(x,y,obj_ball_white.x,obj_ball_white.y)
	draw_sprite_ext(spr_stick,0, x+pull*cos(point_angle), y-pull*sin(point_angle), 1, 1, 
	point_direction(x,y,obj_ball_white.x,obj_ball_white.y),-1,0.6)
}