/// @description on click
hovering = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

if (hovering && mouse_check_button_pressed(mb_left)) {
	if instance_exists(obj_player) {
		obj_player.can_attack = false;
	}
	clicked = true;
}

if (mouse_check_button_released(mb_left)) 
{
	if instance_exists(obj_player) {
		obj_player.can_attack = true;
	}
	clicked = false;

	if (hovering) {
		on_click();
	}
	
} 