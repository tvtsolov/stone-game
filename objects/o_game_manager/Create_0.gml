#macro FIELD global.board_array
#macro GROUPS global.groups

#macro CAM_W 400
#macro CAM_H 400

#macro CAM_SCALE 2



enum color_type {
	black, 
	white	
}


player_black = instance_create_layer(-10, -10, "Instances", o_player);
player_white = instance_create_layer(-20, -10, "Instances", o_player);

current_player = player_black;


camera = camera_create_view(0, 0, CAM_W, CAM_H);

window_set_size(CAM_W * CAM_SCALE, CAM_H * CAM_SCALE);
surface_resize(application_surface, CAM_W * CAM_SCALE, CAM_H * CAM_SCALE);
var display_width = display_get_width();
var display_height = display_get_height();
 
var window_width = CAM_W * CAM_SCALE;
var window_height = CAM_H * CAM_SCALE;

window_set_position(display_width div 2 - window_width div 2, display_height div 2 - window_height div 2);

display_set_gui_size(CAM_W , CAM_H );

view_set_camera(0, camera);


board_size = 9;
global.board_array = noone;


//>>>>>>>>>>>GROUPS<<<<<<<<<<<//

global.groups = array_create(0);

function group(_fields, _color) constructor 
{
	color_		= _color;
	fields_		= _fields;
	//edges = find_edges(fields);
}


/*
FIELD props:
stone = noone;
row = -1;
col = -1;

STONE props:
object type/color
*/



