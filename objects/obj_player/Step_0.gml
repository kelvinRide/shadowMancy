//----------------------------------------------------------------//
//inputs
//----------------------------------------------------------------//
var _key_right = keyboard_check(ord("D"));
var _key_left = keyboard_check(ord("A"));
var _key_spacebar = keyboard_check_pressed(vk_space);
var _left_click = mouse_check_button_pressed(mb_left);

//----------------------------------------------------------------//
//state
//----------------------------------------------------------------//
var _touching_floor = place_meeting(x, y + 1, obj_floor_template);

//----------------------------------------------------------------//
//movement horisontal
//----------------------------------------------------------------//
horisontal_move = (_key_right - _key_left) * movement_speed;

if place_meeting(x + horisontal_move , y, obj_floor_template) {
	while !place_meeting(x + sign(horisontal_move), y, obj_floor_template) {
		x += sign(horisontal_move);
	}
	horisontal_move = 0;
}

if horisontal_move > 0 {
	image_xscale = -1;
} else if horisontal_move < 0 {
	image_xscale = 1;
}
//final horisontal move
x += horisontal_move;

x = clamp(x, 0, room_width);

//----------------------------------------------------------------//
//movement vertical
//----------------------------------------------------------------//
vertical_speed += room_gravity; //gravity

if place_meeting(x, y + vertical_speed, obj_floor_template) {
	while !place_meeting(x, y + sign(vertical_speed), obj_floor_template) {
		y += sign(vertical_speed);
	}
	vertical_speed = 0;
}

//jump
if _touching_floor {
	can_jump = 10;
} else {
	can_jump -= 1;
}
if _key_spacebar and can_jump > 0 {
	vertical_speed = 0;
	can_jump = 0;
	y -= jump_height;
}

//final vertical move
y += vertical_speed;

y = clamp(y, 0, room_height);

//----------------------------------------------------------------//
//attack
//----------------------------------------------------------------//
if _left_click && can_attack {
	var _sword = instance_create_layer(x + horisontal_move * 3 , y - sprite_height/3,"Instances", obj_sword_attack);
	_sword.image_xscale = image_xscale * - 1;
}