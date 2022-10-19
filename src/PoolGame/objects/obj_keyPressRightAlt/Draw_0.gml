/// @description Insert description here
// You can write your code in this editor


draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_transformed(x, y, keyVal, 3, 3, 0);

draw_set_alpha(0.5);
draw_set_color(c_grey);
if (pressed) draw_rectangle(x-48, y-48, x+48, y+48, false);
draw_set_alpha(1);
draw_set_color(c_white);