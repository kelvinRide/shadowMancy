/// @description game display step
var _speech_image_scale = instance_exists(obj_speech_bubble)? string(obj_speech_bubble.image_xscale):"none";
var _speech_text_lines = instance_exists(obj_speech_bubble)? string(obj_speech_bubble.image_yscale):"none";

var _speech_x_correction = string(obj_npc1.bubble_x_correction);
var _speech_array_index = string(obj_npc1.speech_index);

var _new_display_text = "bubble_image_scale: " + _speech_image_scale
+ "\n speech_text_lines:" + _speech_text_lines
+ "\n speech_array_index:" + _speech_x_correction
+ "\n speech_array_index:" + _speech_array_index 
;

if displayed_text != _new_display_text {
	if (!instance_exists(obj_display_debug)){
		display_instance = instance_create_layer(x,y,"Instances",obj_display_debug);	
	}
	
	display_instance.displayed_text = _new_display_text;
	displayed_text = _new_display_text;
}