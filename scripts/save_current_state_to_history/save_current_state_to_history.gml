function save_current_state_to_history(){
	var mock_state = create_mock_state_from_current_state(current_player);
	deactivate_state(mock_state);
	array_push(PREVIOUS_STATES, mock_state);
}