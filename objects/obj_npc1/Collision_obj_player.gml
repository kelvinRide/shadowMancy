cooldown_timer = cooldown_time;

if (speach_bubble_id == noone)	{
	var _speech_bubble = instance_create_layer(x + sprite_width/2 ,y - sprite_height, "Instances", obj_speech_bubble );
	speach_bubble_id = _speech_bubble.id;
	_speech_bubble.speech_text = "This is test text";
	
}