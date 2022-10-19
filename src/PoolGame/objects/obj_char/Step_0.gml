/// @description AAA
//boundKeeper
global.color1 = image_index
//staying within bounds
if x>global.rightBound
	x = global.rightBound
	
if y>global.bottomBound
	y = global.bottomBound
	
if x<global.leftBound
	x = global.leftBound
	
if y<global.topBound
	y=global.topBound

//HitTimer
if keyboard_check_direct(vk_lalt) && global.hitTime<global.hitTimeMax
{
	global.hitTime+=1
}
if global.hitTime<0
{
	global.hitTime+=1
}
	
//Movement
velocity = base_velocity
if ((keyboard_check(ord("A")) || keyboard_check(ord("D")))
	&& (keyboard_check(ord("W")) || keyboard_check(ord("S"))))
{
	velocity = base_velocity / sqrt(2)
}

if keyboard_check(ord("A"))
{
	if x-velocity > global.leftBound
	x-=velocity
	else
	x = global.leftBound
}
if keyboard_check(ord("D"))
{
	if x+velocity < global.rightBound
	x+=velocity
	else
	x = global.rightBound
}

if keyboard_check(ord("W"))
{
	if y-velocity > global.topBound
	y-=velocity
	else
	y = global.topBound
}

if keyboard_check(ord("S"))
{
	if y+velocity < global.bottomBound
	y+=velocity
	else
	y = global.bottomBound
}
//hit counter
if global.hitTick>0
{
	global.hitTick-=1
	if floor(global.hitTick / invulFrame) mod 2 = 1
	image_alpha = 0.5
	else
	image_alpha=1
}

