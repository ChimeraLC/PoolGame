/// @description AAA

global.color2 = image_index
if x>global.rightBound
	x = global.rightBound
	
if y>global.bottomBound
	y = global.bottomBound
	
if x<global.leftBound
	x = global.leftBound
	
if y<global.topBound
	y=global.topBound

if keyboard_check_direct(vk_ralt) && global.hitTime2<global.hitTimeMax
{
	global.hitTime2+=1
}
if global.hitTime2<0
{
	global.hitTime2+=1
}
//Movement
velocity = base_velocity
if ((keyboard_check(ord("I")) || keyboard_check(ord("L")))
	&& (keyboard_check(ord("I")) || keyboard_check(ord("K"))))
{
	velocity = base_velocity / sqrt(2)
}

if keyboard_check(ord("J"))
{
	if x-velocity > global.leftBound
	x-=velocity
	else
	x = global.leftBound
}
if keyboard_check(ord("L"))
{
	if x+velocity < global.rightBound
	x+=velocity
	else
	x = global.rightBound
}

if keyboard_check(ord("I"))
{
	if y-velocity > global.topBound
	y-=velocity
	else
	y = global.topBound
}

if keyboard_check(ord("K"))
{
	if y+velocity < global.bottomBound
	y+=velocity
	else
	y = global.bottomBound
}
//hit counter
if global.hitTick2>0
{
	global.hitTick2-=1
	if floor(global.hitTick2 / invulFrame) mod 2 = 1
	image_alpha = 0.5
	else
	image_alpha=1
}
