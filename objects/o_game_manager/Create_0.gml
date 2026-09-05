
#macro SOUNDS global.sounds
#macro PREVIOUS_STATES global.board_states_history
#macro FIELD global.board_fields_array
#macro GROUPS global.groups
#macro BOARD_SIZE global.board_size
#macro PLAYER_B o_game_manager.player_black
#macro PLAYER_W o_game_manager.player_white
#macro CURRENT_PLAYER = o_game_manager.current_player

enum color_type {
	black = -1, 
	white	= 1
}

enum stage {
	playing			= 1,
	counting		= 2,
	end_of_game		= 3,
	finish_prompt	= 4
}

counting_finished	= false;
negotiation_phase	= false;
finalized			= false;
fullscreen			= false;

global.score_zones_white = 0;
global.black_stones_hostiges = 0;
global.score_zones_black = 0;
global.white_stones_hostiges = 0;

empty_groups = [];
game_stage = stage.playing; 
playing = true;
temp_target = -1;
mock_state = noone;
is_allowed = true;
draw_surrounded_empty_fields = false;

global.board_states_history = [];

//create black player
player_black		= instance_create_layer(-10, -10, "Instances", o_player);
player_black.color_ = color_type.black;
player_black.pass	= false;

//create white player
player_white		= instance_create_layer(-20, -10, "Instances", o_player);
player_white.color_ = color_type.white;
player_white.pass	= false;

number_of_passes = 0;

current_player = player_black;
previous_player = player_white;


set = false;

global.c_light_yellow = make_colour_rgb(219, 182, 67);

global.board_start_coordinates	= 40; 
global.board_size				= 0;
global.board_fields_array				= array_create(0);
global.groups					= array_create(0);
global.empty_zones				= array_create(0);
global.linked_groups			= array_create(0); // the complete linked groups

board_sprite = s_board_9x9

temp_black_hostiges		= 0;
temp_white_hostiges	= 0;


x=0;
y=0;

make_scripts();


//>>>>>>>>>>>GROUPS<<<<<<<<<<<//

create_sounds();

function Group(_color, _fields) constructor 
{
	color_		= _color;
	fields_		= _fields;
	function clean_up(){
		var size = array_length(fields_);
		for (var i = 0; i < size; ++i) {
		    fields_[i] = 0;
		}
		fields_ = [];
	}
	linked_to		= [];
	edges			= [];
	eyes			= [];
	possible_eyes	= [];
	is_dead			= false;
	checked			= false; // multipurpose flag
	secured			= false;
	outlined		= false;
	switched		= false;
}

/// @param {Id.Instance} 	player_  		Last played field
/// @param {Array} 			board_ 			Get groups of the same color(true) or not(false)
/// @param {Array} 			groups_  		Last played field

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
	
	// clone each field into the new group
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

			temp_fields[ii] = temp_field; //TODO  bug after pressing pass and getting back to the game
		}
		temp_groups[i] = temp_group;
	}
	
	state_groups = temp_groups;


#endregion CREATEGROUPS

#region CLEANUP
	function clean_up() {
	
		var count = array_length(state_groups);
		for (var i = 0; i < count; ++i) {
			state_groups[i].clean_up();
		}
	
		delete state_groups;
	
		var size = global.board_size;
		for (var i = 0; i < size; ++i) {
		    for (var ii = 0; ii < size; ++ii) {
			     if board_state[i][ii].stone != noone {
						with(board_state[i][ii].stone){
							instance_destroy();
						}	
				  }
				  instance_destroy(board_state[i][ii]);
			 }
		}

	}

}
#endregion


function Empty_zone(fields) constructor {
	
	fields_				= fields;
	disputed			= false;
	is_real_eye			= false;
	is_possible_eye		= false;
	main_influence		= noone;
}

function Chained_group(groups_) constructor {
	
	groups = groups_;
	possible_eyes = 0;
	
}

window_center();

