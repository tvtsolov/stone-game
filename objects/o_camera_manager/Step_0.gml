


//camera_set_view_size(camera, CAM_W * CAM_SCALE, CAM_H * CAM_SCALE);

view_set_camera(0, camera);

if (!view_get_visible(0))
{
    view_set_visible(0, true);
}