if collision_point(mouse_x, mouse_y, size_1_select.id, true , true) {
	global.board_size = 9;
	room_goto(Board);
} else if collision_point(mouse_x, mouse_y, size_2_select.id, true , true) {
	global.board_size = 13;
	room_goto(Board);
} else if collision_point(mouse_x, mouse_y, size_3_select.id, true , true) {
	global.board_size = 19;
	//room_goto(Board);
} 