function set_board_state(new_board_state){

	var size = global.board_size;
	for (var i = 0; i < size; ++i) {
	   for (var ii = 0; ii < size; ++ii) {
		    if global.board_array[i][ii].stone != noone {
				instance_destroy(global.board_array[i][ii].stone);
			 }
			 instance_destroy(global.board_array[i][ii]);
		}
	}
	global.board_array = [];
	global.board_array = new_board_state.board_state;
	
	global.groups = [];
	global.groups = new_board_state.state_groups;

}