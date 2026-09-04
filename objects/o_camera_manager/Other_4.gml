if room = Menu {
	
	//camera_set_view_size(CAMERA, CAM_W*WINDOW_SIZE, CAM_H*WINDOW_SIZE);
	// same as:
	//camera_set_view_size(CAMERA, view_wport[0], view_hport[0]);
	
	//camera_set_view_size(CAMERA, view_wport[0]/2, view_hport[0]/2);
	
	camera_set_view_pos(CAMERA, view_xport, view_yport);
	
	window_set_size(CAM_W*WINDOW_SIZE, CAM_H*WINDOW_SIZE );
}

if room == Board and BOARD_SIZE == 9 {
	
	//camera_set_view_size(CAMERA, CAM_W*WINDOW_SIZE/2 +32, CAM_H*WINDOW_SIZE/2 +18);
	
	//camera_set_view_size(CAMERA, view_wport[1], view_hport[1]);
	
	
	camera_set_view_size(CAMERA, view_wport[0], view_hport[0]); // this does nothing
	
	camera_set_view_pos(CAMERA, view_xport+10, view_yport+10);
	
	window_set_size(CAM_W*WINDOW_SIZE, CAM_H*WINDOW_SIZE);
	
}

if room == Board and BOARD_SIZE == 13 {
	
	//view_wport = view_wport*2;
	//view_hport = view_hport*2;
	//camera_set_view_size(CAMERA, view_wport[0], view_hport[0]);

	//window_set_size(CAM_W*WINDOW_SIZE, CAM_H*WINDOW_SIZE );
	
	var w_ = window_get_width();
	var h_ = window_get_height();
	
	//window_set_size(w_*2, h_*2);
}


