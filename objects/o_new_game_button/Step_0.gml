//visible = true;



if (BOARD_SIZE == 9) {

	var h = camera_get_view_height(CAMERA);
	var _x = o_pass_button.x;
	x = _x;
	y = h -40;

} else {
	var h = camera_get_view_height(CAMERA);
	var _x = o_pass_button.x;
	x = _x;
	var _y = global.board_start_coordinates + sprite_get_width(o_game_manager.board_sprite) -50;
	y = _y;
}


if image_speed != 0 and image_index > 2 {
	image_speed = 0;;
}



