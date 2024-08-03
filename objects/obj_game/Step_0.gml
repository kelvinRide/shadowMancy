/// @description game display step
if display_debug_info {
	var _pressing_e =  instance_exists(obj_npc1)?string(obj_npc1.pressing_e):"none";
	var _touching_player =  instance_exists(obj_npc1)?string(obj_npc1.touching_player):"none";
	var _cooldown_timer =  instance_exists(obj_npc1)?string(obj_npc1.cooldown_timer):"none";

	var _new_display_text = 
	  "display_debug_info: " + string(display_debug_info)
	+ "\n _pressing_e: " + _pressing_e
	+ "\n _touching_player: " + _touching_player
	+ "\n _cooldown_timer: " + _cooldown_timer
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