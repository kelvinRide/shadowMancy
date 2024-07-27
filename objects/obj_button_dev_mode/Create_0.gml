// Inherit the parent event
event_inherited();

on_click = function() 
{
	if instance_exists(obj_game) 
	{
		if obj_game.display_debug_info 
		{
			obj_game.display_debug_info = false
		} 
		else 
		{
			obj_game.display_debug_info = true
		}
		var _test = obj_game.display_debug_info? "On":"Off"
		button_text = "Dev Mode: " + _test
	}
}