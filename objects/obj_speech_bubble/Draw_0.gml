/// @description Insert description here
// You can write your code in this editor
draw_self()

draw_set_font(fnt_game);

draw_set_halign(fa_center);

draw_set_valign(fa_middle);

draw_set_color(c_white);

draw_text_ext(x, y, speech_text,20,400);

image_yscale = script_text_image_yscale_cal(speech_text, 400)

image_xscale = script_text_image_xscale_cal(speech_text, 6.5);