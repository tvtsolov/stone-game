temp_target = noone;
is_allowed = true;

if mouse_check_button_pressed(mb_left){
	var played_field = collision_point(mouse_x, mouse_y, o_field, false, true);

	if played_field != noone and played_field.stone = noone
	{

		// make an initial state in case we need to revert the board latter
		var init_state = create_mock_state_from_current_state(current_player);
		deactivate_state(init_state);

		
		//get the previous state to compare with latter to check if the move is allowed
		var prev_state = -1;
		if array_length(PREVIOUS_STATES) > 2{
			var size_states = array_length(PREVIOUS_STATES);
			prev_state = PREVIOUS_STATES[size_states-2];
		}
	
		
		var stone_type =  current_player = player_black ? o_stone_black : o_stone_white;
		var stone_ = instance_create_layer(played_field.x, played_field.y, "Instances", stone_type);
		played_field.stone = stone_;
		

		// make new groups and remove stones if any are surrounded
		check_board(stone_, played_field);

		//check if old state can be compared and compare it to see if move is allowed
		if prev_state != -1 {
			
			var new_state = create_mock_state_from_current_state(current_player);
			activate_state(prev_state);
			
		
			if (same_as_prev_state(new_state, prev_state)){
				show_debug_message("the state is the same");
				is_allowed = false;
			} 
			

	
			new_state.clean_up();
			delete new_state;
			
		
			//this one is a reference to a history point, no need to clecan it up
			deactivate_state(prev_state);


		}

		if is_allowed {
			//play sounds
			
		
			SOUNDS[random_range(0, 4)].play = true;
		
			//save this state in the history
			var mock_state = create_mock_state_from_current_state(current_player);
			deactivate_state(mock_state);
		   array_push(PREVIOUS_STATES, mock_state);	
			

			
			
			//new turn, new player
			current_player = (current_player = player_black) ? player_white : player_black;
		} else {
		
			var curr_state = create_mock_state_from_current_state(current_player);
			deactivate_state(curr_state);
			delete curr_state;
			
			if played_field.stone != noone {
				with played_field.stone{
					instance_destroy();	
				}
			}
			activate_state(init_state);
			set_board_state(init_state);
		}

	}

}

run_sounds();