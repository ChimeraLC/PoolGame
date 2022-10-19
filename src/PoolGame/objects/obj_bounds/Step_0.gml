/// @description Insert description here
// You can write your code in this editor
image_xscale = global.scale
image_yscale = global.scale
global.rightBound = 770+695*global.scale
global.leftBound = 830-695*global.scale
global.topBound = 542-412*global.scale
global.bottomBound = 482+412*global.scale
global.gameTime+=1
if global.gameTime<1000 && global.gameTime>500
{
	global.scale = (1500-global.gameTime)/1000
	//window_set_size(width*2*global.scale,height*2*global.scale)
}