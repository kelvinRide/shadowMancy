cooldown_timer = cooldown_time;

if (speach_bubble_id == noone)	{
	var _speech_bubble = instance_create_layer(x + bubble_x_correction ,y - sprite_height, "speech_layer", obj_speech_bubble );
	speach_bubble_id = _speech_bubble.id;
	
	_speech_bubble.speech_text = speech_array[speech_index];
	//_speech_bubble.x_correction = bubble_x_correction;

	if speech_index == array_length(speech_array) - 1 {
		speech_index = 0
	} else {
		speech_index += 1
	}

}