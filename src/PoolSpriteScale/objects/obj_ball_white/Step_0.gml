/// @description AAA

if x>global.rightBound
	x = global.rightBound
	
if y>global.bottomBound
	y = global.bottomBound
	
if x<global.leftBound
	x = global.leftBound
	
if y<global.topBound
	y=global.topBound
//Movement
xTemp = x + velocity * cos(angle)

yTemp = y + velocity * sin(angle)


//Collision
if xTemp<global.leftBound && cos(angle)<=0
{
	angle = pi - angle
	if velocity>shakeThresh
		screenshake(4, (velocity-shakeThresh)/shakeLimiter, 0.3);
}

if xTemp>global.rightBound && cos(angle)>=0
{
	angle = pi - angle
	if velocity>shakeThresh
		screenshake(4, (velocity-shakeThresh)/shakeLimiter, 0.3);
}

if yTemp>global.bottomBound && sin(angle)>=0
{
	angle = - angle
	if velocity>shakeThresh
		screenshake(4, (velocity-shakeThresh)/shakeLimiter, 0.3);
}

if yTemp<global.topBound && sin(angle)<=0
{
	angle = -angle
	if velocity>shakeThresh
		screenshake(4, (velocity-shakeThresh)/shakeLimiter, 0.3);
}

x += velocity * cos(angle)

y += velocity * sin(angle)

if(velocity>10)
 velocity *=0.995
 else
 velocity-=0.1
 
 if(velocity<1)
 velocity = 0
 
 //Slapping
 
if not keyboard_check_direct(vk_lalt)
{
	if global.hitTime = global.hitTimeMax
	{
		global.hitTime = -4
			if (distance_to_object(obj_char)<global.hitDistance)
			{
			//some distance check
			angle = -(pi*point_direction(x,y,obj_char.x,obj_char.y)/180+pi)
		
			//increase or set???
			velocity +=15
			if velocity>maxSpeed
			velocity = maxSpeed
			//screenshake(10, 3, 0.3);
		}
	}
	if (global.hitTime>0)
		global.hitTime=0
		
}

if not keyboard_check_direct(vk_ralt)
{
	if global.hitTime2 = global.hitTimeMax
	{
		global.hitTime2 = -4
			if (distance_to_object(obj_char_2)<global.hitDistance)
			{
			//some distance check
			angle = -(pi*point_direction(x,y,obj_char_2.x,obj_char_2.y)/180+pi)
		
			//increase or set???
			velocity +=15
			if velocity>maxSpeed
			velocity = maxSpeed
			//screenshake(10, 3, 0.3);
		}
	}
	if (global.hitTime2>0)
		global.hitTime2=0
		
}