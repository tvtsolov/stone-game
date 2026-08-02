#macro CAM_W 640
#macro CAM_H 360
#macro WINDOW_SIZE 2

camera = camera_create_view(0, 0, CAM_W, CAM_H);

window_set_size(CAM_W  * WINDOW_SIZE, 
				CAM_H  * WINDOW_SIZE);
//surface_resize(application_surface, CAM_W * CAM_SCALE, CAM_H * CAM_SCALE);
//var display_width = display_get_width();
//var display_height = display_get_height();
 
//var window_width = CAM_W * CAM_SCALE;
//var window_height = CAM_H * CAM_SCALE;

//window_set_position(display_width div 2 - window_width div 2, display_height div 2 - window_height div 2);
	
//display_set_gui_size(CAM_W , CAM_H);

view_set_camera(0, camera);
