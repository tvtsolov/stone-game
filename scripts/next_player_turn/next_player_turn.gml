function next_player_turn(){
	
	previous_player = current_player;
	current_player = (current_player = PLAYER_B) ? PLAYER_W : PLAYER_B;
	
}