temp_target = noone;

		
		var mes = instance_number(o_stone);
		show_debug_message(mes)	;

if mouse_check_button_pressed(mb_left){
	var played_field = collision_point(mouse_x, mouse_y,o_field, false, true);

	if played_field != noone and played_field.stone = noone
	{
		
		//mock_state = create_mock_state(current_player);
		//var row = played_field.row;
		//var col = played_field.col;
		//played_field = mock_state.board_state[row][col];
	
		
		var stone_type =  current_player = player_black ? o_stone_black : o_stone_white;
		var stone_ = instance_create_layer(played_field.x, played_field.y, "Instances", stone_type);
		played_field.stone = stone_;
		
		
		
		// check if board is 
		// returned to the previous state
		
		// TODO it's allowed to make that completely surrounds your group/stone only if it ssurrounds another
		// group
		
		check_board(stone_, played_field);
		
		//apply new state if allowed
			
		//set_board_state(mock_state);			// set the whole board to the new state
		
		//save the new board state

		
		//save_state(current_player, FIELD, GROUPS);	// log into history
		

		//delete mock_state;

		
		//play sounds
		SOUNDS[random_range(0, 4)].play = true;
		
		var mock_state = create_mock_state(current_player);
		deactivate_state(mock_state);
	   array_push(PREVIOUS_STATES, mock_state);	
				
		//new turn, new player
		current_player = (current_player = player_black) ? player_white : player_black;
		
		/////played_field.stone;

	}
	
}

run_sounds();