function deactivate_all_current_fields(){
	for (var i = 0; i < BOARD_SIZE; ++i) {
		for (var ii = 0; ii < BOARD_SIZE; ++ii) {
			instance_deactivate_object( FIELD[i][ii] );
		}
	}
}