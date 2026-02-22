function create_mock_state_from_current_state(current_player_){
	var mock_board_state = new State(current_player_, global.board_array, global.groups);
	return mock_board_state;
}