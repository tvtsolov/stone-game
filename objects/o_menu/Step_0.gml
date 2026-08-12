if collision_point(mouse_x, mouse_y, size_1_select, true , true) {
	size_1_select.visible = true;
	size_2_select.visible = false;
	size_3_select.visible = false;
}

if collision_point(mouse_x, mouse_y, size_2_select, true , true) {
	size_1_select.visible = false;
	size_2_select.visible = true;
	size_3_select.visible = false;
}

if collision_point(mouse_x, mouse_y, size_3_select, true , true) {
	size_1_select.visible = false;
	size_2_select.visible = false;
	size_3_select.visible = true;
}