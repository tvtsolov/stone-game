function next_player_turn(){
	
	previous_player = current_player;
	current_player = (current_player = player_black) ? player_white : player_black;
}