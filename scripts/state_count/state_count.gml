function state_count(){
	
	go_to_counting();
	
	if o_game_manager.finalized {
		o_game_manager.game_stage = stage.end_of_game;
	}
	
}