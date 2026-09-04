//visible = true;

if (BOARD_SIZE == 9) {

	var w_w = camera_get_view_width(CAMERA);
	var _x = w_w - (sprite_width);
	x = _x;
	y = o_pass_button.y;

} else {
	
	x = o_pass_button.x + o_pass_button.sprite_width*2
	y = o_pass_button.y;
}


if image_speed != 0 and image_index > 2 {
	image_speed = 0;
	pressed = false;
}

 
