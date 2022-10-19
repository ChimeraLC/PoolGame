/// @description Insert description here
// You can write your code in this editor
//only drop balls in if board is full size
if global.rightBound == 1465
{
instance_destroy(obj_ball_white)
instance_create_layer(x,y,"Foreground", obj_ballout_white)
}