function script_text_image_xscale_cal(_text, _max_image_scale){
	var _x_scale =  string_length(_text) * 0.175
	
	return clamp(_x_scale, 1, _max_image_scale)
}


//don't ask it works
function script_text_image_yscale_cal(_text, _max_width){
	var _lines = 1 + floor(string_width(_text)/ _max_width);
	
	return clamp(_lines / 2, 1 , 3)
}