function script_text_image_xscale_cal(_text, _max_image_scale) {
	var _x_scale =  string_length(_text) * 0.175;	
	
	return clamp(_x_scale, 1, _max_image_scale);
}


//don't ask it works
function script_text_image_yscale_cal(_text, _max_width) {
	var _lines = 1 + floor(string_width(_text)/ _max_width);
	
	return clamp(_lines / 2, 1 , 3);
}

function script_draw_dynamic_speech_bubble(_text) {
	draw_self();

	draw_set_font(fnt_game);

	draw_set_halign(fa_center);

	draw_set_valign(fa_middle);

	draw_set_color(c_white);

	draw_text_ext(x, y, _text,20,400);

	image_yscale = script_text_image_yscale_cal(_text, 400);

	image_xscale = script_text_image_xscale_cal(_text, 6.5);
}

function script_draw_static_speech_bubble(_text) {
	//middle of the room and at y 700
	x = room_width/2;
	y = 735;
	
	draw_self();

	draw_set_font(fnt_game);

	draw_set_halign(fa_center);

	draw_set_valign(fa_middle);

	draw_set_color(c_white);

	draw_text_ext(x, y, _text,20,400);
	//image_yscale = 
	image_xscale = 6.5
	
}