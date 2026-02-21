temp_target = noone;
var is_allowed = true;
		

if mouse_check_button_pressed(mb_left){
	var played_field = collision_point(mouse_x, mouse_y, o_field, false, true);

	if played_field != noone and played_field.stone = noone
	{
		//mock_state = create_mock_state(current_player);
		//var row = played_field.row;
		//var col = played_field.col;
		//played_field = mock_state.board_state[row][col];
		var prev_state = -1;
		if array_length(PREVIOUS_STATES) > 2{
			var size_states = array_length(PREVIOUS_STATES);
			prev_state = PREVIOUS_STATES[size_states-2];
		}
		
		var stone_type =  current_player = player_black ? o_stone_black : o_stone_white;
		var stone_ = instance_create_layer(played_field.x, played_field.y, "Instances", stone_type);
		played_field.stone = stone_;
		
		
		// check if board is 
		// returned to the previous state
		
		// TODO it's allowed to make that completely surrounds your group/stone only if it ssurrounds another
		// group
		
		check_board(stone_, played_field);
		
		if prev_state != -1 {
			var new_state = create_mock_state(current_player);
			activate_state(prev_state);
		
			if (same_as_prev_state(new_state, prev_state)){
				show_debug_message("the state is the same");
				is_allowed = false;
			} 
			deactivate_state(new_state);
			deactivate_state(prev_state);
			delete new_state;
			delete prev_state;
		}

		if is_allowed {
			//play sounds
			SOUNDS[random_range(0, 4)].play = true;
		
			//save this state in the history
			var mock_state = create_mock_state(current_player);
			deactivate_state(mock_state);
		   array_push(PREVIOUS_STATES, mock_state);	
				
			//new turn, new player
			current_player = (current_player = player_black) ? player_white : player_black;
		} else {
			var curr_state = create_mock_state(current_player);
			
			//instance_deactivate_object(played_field.stone);
			//instance_deactivate_object(played_field);
			
			with(played_field.stone){
				instance_destroy();
			}
			with(played_field){
				instance_destroy();
			}
			
			show_debug_message("stones:" + string(instance_number(o_stone)));
			
			deactivate_state(curr_state);
			
			show_debug_message("stones:" + string(instance_number(o_stone)));
			
			delete curr_state;
			
			show_debug_message("stones:" + string(instance_number(o_stone)));
			
			var size_states = array_length(PREVIOUS_STATES);
			var last_state = PREVIOUS_STATES[size_states-1];
			activate_state(last_state);
			var new_state_to_set = copy_state(last_state);
			deactivate_state(last_state);
			
			set_board_state(new_state_to_set);
		}

	}
	
}

run_sounds();