// Inherit the parent event
event_inherited();

on_click = function() 
{
	obj_npc1.speech_index -= 1
	if obj_npc1.speech_index < 0 {
		obj_npc1.speech_index = array_length(obj_npc1.speech_array) - 1
	}

	//obj_npc1.bubble_image_scale -= 0.5
}