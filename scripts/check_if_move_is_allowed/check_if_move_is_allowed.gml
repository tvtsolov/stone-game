function check_if_move_is_allowed(prev_state){
	if prev_state != -1 {
		var cur_state = create_mock_state_from_current_state(self.current_player);
		activate_state(prev_state);
			
		
		if (same_as_prev_state(cur_state, prev_state)){
			show_debug_message("the state is the same");
			self.is_allowed = false;
		} 
	
		cur_state.clean_up();
		delete cur_state;
			
		//this one is a reference to a history point, no need to clean it up
		deactivate_state(prev_state);
		
		if !is_allowed {
			activate_state(cur_state);
			set_board_state(cur_state);
		}
	}
	return self.is_allowed;
}