/// @description Main Dialog logic
cooldown_timer --;

if (cooldown_timer <= 0 and speach_bubble_id != noone) {
	cooldown_timer = cooldown_time;	
	instance_destroy(speach_bubble_id);	
	speach_bubble_id = noone;
}

//todo fix dialog hit box and stuff
if place_meeting(x, y , obj_player) and keyboard_key_press(ord("E")) {
	cooldown_timer = cooldown_time;

	if (speach_bubble_id == noone) {
		var _speech_bubble = instance_create_layer(x ,y, "speech_layer", obj_speech_bubble );
		speach_bubble_id = _speech_bubble.id;
	
		_speech_bubble.speech_text = speech_array[speech_index];

		if speech_index == array_length(speech_array) - 1 {
			speech_index = 0;
		} else {
			speech_index += 1;
		}
	}
}