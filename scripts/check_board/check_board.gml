function check_board(_stone, played_field){
	// check ifany  group exists
	check_neighbors_make_groups(_stone, played_field);
	check_surrounded_and_remove();
	
}