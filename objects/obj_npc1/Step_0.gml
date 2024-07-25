/// @description Main Dialog logic
cooldown_timer --;

if (cooldown_timer <= 0 and speach_bubble_id != noone) {
	cooldown_timer = cooldown_time;	
	instance_destroy(speach_bubble_id);	
	speach_bubble_id = noone;
}