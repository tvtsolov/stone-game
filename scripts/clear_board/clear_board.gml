function clear_board(){
	
	var fields_arr = global.board_fields_array;
	var size = global.board_size;
	
	for (var i = 0; i < size; ++i) {
		for (var ii = 0; ii < size; ++ii) {
			with(fields_arr[i][ii].stone){
				instance_destroy();
			}
			fields_arr[i][ii].stone = noone;
		}
	}

	array_resize(global.groups, 0);
	
	
	//global.board_states_history = [];
	var hist = global.board_states_history;
	size = array_length(hist);
	
	for (var i = 0; i < size; ++i) {
		var state = hist[i];
		
		for (var ii = 0; ii < global.board_size; ++ii) {
			for (var iii = 0; iii <  global.board_size; ++iii) {
				with(state.board_state[ii][iii].stone){
					instance_destroy();
				}
				state.board_state[ii][iii].stone = noone;
			}
			state.board_state[ii] = -1;
		}
		//array_resize(global.board_state, 0);
		array_resize(global.board_states_history[i].state_groups, 0);
	}
	array_resize(hist, 0);
	with(o_stone){
		instance_destroy();	
	}
	
	show_debug_message(instance_number(o_stone));
	show_debug_message(instance_number(o_field));
	
	global.black_stones_hostiges = 0;
	global.white_stones_hostiges = 0;
}