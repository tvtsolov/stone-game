if collision_point(mouse_x, mouse_y, size_1_select, true , true) {
	size_1_select.selected = true;
	size_2_select.selected = false;
	size_3_select.selected = false;
}

if collision_point(mouse_x, mouse_y, size_2_select, true , true) {
	size_1_select.selected = false;
	size_2_select.selected = true;
	size_3_select.selected = false;
}

if collision_point(mouse_x, mouse_y, size_3_select, true , true) {
	size_1_select.selected = false;
	size_2_select.selected = false;
	size_3_select.selected = true;
}