/// @description Insert description here
// You can write your code in this editor

//spacing health points
for (var i=0; i<global.health; i++)
{
	draw_sprite_ext(sprite_index, image_index, x+i*health_spacing*global.scale-10, y+10, global.scale, global.scale, 0, image_blend, image_alpha)
}