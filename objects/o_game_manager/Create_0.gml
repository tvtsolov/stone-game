#macro CAM_W 400
#macro CAM_H 400
#macro CAM_SCALE 2
#macro SOUNDS global.sounds
#macro STATES global.board_states_history
#macro FIELD mock_state.board_state
#macro GROUPS mock_state.state_groups


enum color_type {
	black, 
	white	
}

temp_target = -1;
mock_state = noone;


global.board_states_history = [];

player_black = instance_create_layer(-10, -10, "Instances", o_player);
player_black.color_ = color_type.black;
player_white = instance_create_layer(-20, -10, "Instances", o_player);
player_white.color_ = color_type.white;

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


global.board_size = 9;
global.board_array = array_create(0);
global.groups = array_create(0);

//>>>>>>>>>>>GROUPS<<<<<<<<<<<//



function Group(_color, _fields, ) constructor 
{
	color_		= _color;
	fields_		= _fields;
}




function State(player_, board_, groups_) constructor 
{
	
	current_player = player_;
	board_state = [];
	var size = array_length(board_);
	var temp_board_state = array_create(size);  //this is all the current fields 
	
	// create each row empty;
	for (var i = 0; i < size; ++i) {
	    temp_board_state[i] = array_create(size);
	}
	
	// clone each field;
	for (var i = 0; i < size; ++i) {
		 for (var ii = 0; ii < size; ++ii) {
			temp_board_state[i][ii] = copy_field(board_[i][ii], temp_board_state[i][ii]);
		 }
	}
	board_state = temp_board_state;
	

	// The groups comes after because it uses the copied fields and works with them
	
	// create new groups
	
	var groups_count = array_length(groups_);
	var temp_groups = array_create(groups_count);

	
	for (var i = 0; i < groups_count; ++i) {
		var cur_group = groups_[i];
		var fields_to_copy_num = array_length(cur_group.fields_);
		var new_copied_fields = array_create(fields_to_copy_num);
		var color__ = noone;
		
		var new_group_ref = 1;
		for (var ii = 0; ii < fields_to_copy_num; ++ii) {
		    new_copied_fields[ii] = copy_field(cur_group.fields_[ii], new_copied_fields[ii]);
		}
		
		var new_group = new Group(cur_group.color_, new_copied_fields);
		
		var size_ = array_length(new_group.fields_);
		for (var k = 0; k < size_; ++k) {
		    new_group.fields_[k].stone.group_ = new_group;
		}
		
		temp_groups[i] = new_group;
	}
	
	state_groups = temp_groups; // < I need to update all stones in the mock_state to these Groups
	var test = 4134;
}

create_sounds();



/*
FIELD props:
stone = noone;
row = -1;
col = -1;

STONE props:
object type/color
*/







