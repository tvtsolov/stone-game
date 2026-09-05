

if not pressed and o_game_manager.game_stage == stage.playing {
	image_speed = 1;
	image_index = 0;
	pressed = true;
	o_game_manager.current_player.pass = true;
	if array_length(global.board_states_history) > 5 {
		o_game_manager.number_of_passes++;
	}
}

