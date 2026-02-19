function deactivate_state(state_){
	
	for (var i = 0; i < global.board_size; ++i) {
		for (var ii = 0; ii < global.board_size; ++ii) {
			var temp_field = state_.board_state[i][ii];
			if temp_field.stone != noone {
				instance_deactivate_object(temp_field.stone);
			}
			instance_deactivate_object(temp_field);
		}
	}
}