#macro CAM_W 400
#macro CAM_H 400
#macro CAM_SCALE 2
#macro SOUNDS global.sounds
#macro PREVIOUS_STATES global.board_states_history
#macro FIELD global.board_array
#macro GROUPS global.groups


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
	
#region CREATEBOARD
	current_player = player_;
	board_state = [];
	var size = array_length(board_);
	var temp_board_state = array_create(size);  //this is all the current fields 
	
	// create each row empty
	for (var i = 0; i < size; ++i) {
	    temp_board_state[i] = array_create(size);
	}
	
	// clone each field into the 
	for (var i = 0; i < size; ++i) {
		 for (var ii = 0; ii < size; ++ii) {
			temp_board_state[i][ii] = copy_field(board_[i][ii], temp_board_state[i][ii]);
		 }
	}
	board_state = temp_board_state;
	
#endregion CREATEBOARD

#region CREATEGROUPS

	// The groups comes after because it uses the copied fields and works with them
	// create new groups
	
	var groups_num = array_length(groups_);
	var temp_groups = array_create(groups_num);
	for (var i = 0; i < groups_num; ++i) {
		
			var c = groups_[i].color_;
			var curr_group = groups_[i];
			var fields_num = array_length(groups_[i].fields_);
			var temp_fields = array_create(fields_num);
			var temp_group = new Group(c,temp_fields);
			
			for (var ii = 0; ii < fields_num; ++ii) {
				
				var row_ = curr_group.fields_[ii].row;
				var col_ = curr_group.fields_[ii].col;
				var temp_field = board_state[row_][col_];
			
				temp_field.stone.group_ = temp_group;

			temp_fields[ii] = temp_field;
		}
		temp_groups[i] = temp_group;
	}
	
	state_groups = temp_groups;


#endregion CREATEGROUPS

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







