if room = Menu {
	camera_set_view_size(CAMERA, CAM_W * WINDOW_SIZE, CAM_H * WINDOW_SIZE);
	
	window_set_size(CAM_W  * WINDOW_SIZE, CAM_H  * WINDOW_SIZE );
}

if room = Board and BOARD_SIZE = 9 {
	camera_set_view_size(CAMERA, CAM_W * WINDOW_SIZE / 2, CAM_H * WINDOW_SIZE / 2);

	window_set_size(CAM_W  * WINDOW_SIZE, CAM_H  * WINDOW_SIZE );
}

if room = Board and BOARD_SIZE = 13 {
	camera_set_view_size(CAMERA, CAM_W * WINDOW_SIZE, CAM_H * WINDOW_SIZE);
	view_wport = view_wport*2;
	view_hport = view_hport*2;
	window_set_size(CAM_W  * WINDOW_SIZE, CAM_H  * WINDOW_SIZE );
}