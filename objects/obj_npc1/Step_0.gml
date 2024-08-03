/// @description Main Dialog logic
pressing_e = keyboard_check_pressed(ord("E"));
touching_player = place_meeting(x, y , obj_player);
cooldown_timer --;

if (cooldown_timer <= 0 and speech_bubble != noone) {
	cooldown_timer = cooldown_time;	
	instance_destroy(speech_bubble);	
	speech_bubble = noone;
}

//todo fix dialog hit box and stuff
if  touching_player and pressing_e {
	cooldown_timer = cooldown_time;
	if (speech_bubble == noone) {
		speech_bubble = instance_create_layer(x ,y, "speech_layer", obj_speech_bubble );
	
		speech_bubble.speech_text = speech_array[speech_index];
	} else {
		speech_bubble.speech_text = speech_array[speech_index];
	}
	
	if speech_index == array_length(speech_array) - 1 {
		speech_index = 0;
	} else {
		speech_index += 1;
	}
}