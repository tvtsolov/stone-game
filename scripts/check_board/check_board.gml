function check_board(_stone, played_field){
	
	// make new groups
	check_neighbors_make_groups(_stone, played_field);
	var neighbor_groups = get_field_neighbor_groups(played_field, false);
	
	// remove surrounded stones
	check_surrounded_and_remove(neighbor_groups);
	
}



	// TODO need the neighboring groups to check only them in the below function, use the last group created 
	//		and check for it's neigbors
	// TODO forbid move that will make the whole new group surrounded/ maybe add forbiden fields based on this?
	// maybe just check self first always and if 
	// TODO need to add forbiden fields / atari
	
	