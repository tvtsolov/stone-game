function same_as_prev_state(curr_state, prev_state){
	var size = global.board_size;
	for (var i = 0; i < size; ++i) {
	    for (var ii = 0; ii < size; ++ii) {
			 var temp_field_prev = prev_state.board_state[i][ii];
			 var temp_field_new = curr_state.board_state[i][ii];
			 
			if temp_field_new.stone = noone and temp_field_prev.stone != noone
			or temp_field_new.stone != noone and temp_field_prev.stone = noone
			{
				return false;
			} else {
				if temp_field_new.stone != noone and temp_field_prev.stone != noone {
					if temp_field_new.stone.color_ != temp_field_prev.stone.color_ {
						return false;
					}
				}
			}
		}
	}
	return true;
}