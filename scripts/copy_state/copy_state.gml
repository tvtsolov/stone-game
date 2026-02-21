function copy_state(old_state_){
	var new_state = new State(old_state_.current_player, old_state_.board_state, old_state_.state_groups);
	return new_state;
}