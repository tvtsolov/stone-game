function save_state(_player, _board, _groups){

	// make the state struct:
	var state = new State(_player, _board, _groups);
	
	// add it to the STATES array
	array_push(STATES, state);

}