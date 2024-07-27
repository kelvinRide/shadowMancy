/// @description game display step
if display_debug_info {
	var _speech_image_scale = instance_exists(obj_speech_bubble)? string(obj_speech_bubble.image_xscale):"none";
	var _speech_text_lines = instance_exists(obj_speech_bubble)? string(obj_speech_bubble.image_yscale):"none";
	var _speech_array_index =  instance_exists(obj_npc1)?string(obj_npc1.speech_index):"none";


	var _new_display_text = "bubble_image_scale: " + _speech_image_scale
	+ "\n speech_text_lines:" + _speech_text_lines
	+ "\n speech_array_index:" + _speech_array_index
	+ "\n display_debug_info:" + string(display_debug_info)
	;

	if (!instance_exists(obj_display_debug)) {
		display_instance = instance_create_layer(x,y,"Instances",obj_display_debug);
		display_instance.image_xscale = 5;
		display_instance.image_yscale = 1.5;
		display_instance.displayed_text = _new_display_text;
		displayed_text = _new_display_text;
	}

	if displayed_text != _new_display_text {
		display_instance.displayed_text = _new_display_text;
		displayed_text = _new_display_text;
	}

} else {
	if instance_exists(obj_display_debug) instance_destroy(obj_display_debug);
}