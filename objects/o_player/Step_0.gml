/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_right)) {
	x += moveSpeed;
}

if (keyboard_check(vk_left)) {
	x -= moveSpeed;
}

if (keyboard_check(vk_up)) {
	y -= moveSpeed;
}

if (keyboard_check(vk_down)) {
	y += moveSpeed;
}

image_angle = point_direction(x, y, mouse_x, mouse_y);

// shooting
if (
	mouse_check_button(mb_left) &&
	cooldown < 1
) {
	instance_create_layer(x, y, "Bullet_Layer", o_bullet);
	cooldown = 3
}
cooldown -= 1;