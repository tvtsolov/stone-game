
if BOARD_SIZE = 13 {
	camera_set_view_size(CAMERA, CAM_W * WINDOW_SIZE, CAM_H * WINDOW_SIZE);
	window_set_size(CAM_W  * WINDOW_SIZE, CAM_H  * WINDOW_SIZE );
}

//camera_set_view_size(camera, CAM_W * CAM_SCALE, CAM_H * CAM_SCALE);

view_set_camera(0, camera);

if (!view_get_visible(0))
{
    view_set_visible(0, true);
}