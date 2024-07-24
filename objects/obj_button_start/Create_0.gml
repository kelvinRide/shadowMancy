// Inherit the parent event
event_inherited();

on_click = function() 
{
	if !instance_exists(obj_player) {
		instance_create_layer(x,y + 200,"Instances", obj_player)
	}
}