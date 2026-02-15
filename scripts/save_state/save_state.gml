function save_state(_player, _board){

	// make the state struct:
	var state = new State(_player, _board);
	
	// add it to the STATES array
	array_push(STATES, state);

}