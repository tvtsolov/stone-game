function save_state(_player, _board, _groups){

	// make the state struct:
	var state = new State(_player, _board, _groups);
	
	// add it to the STATES array
	for (var i = 0; i < global.board_size; ++i) {
		for (var ii = 0; ii < global.board_size; ++ii) {
			var field_temp =  state.board_state[i][ii];
		    
			 if field_temp.stone != noone {
				field_temp.stone.visible = false;
			 }
		}
	}
	
	array_push(PREVIOUS_STATES, state);

}