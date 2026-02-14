function check_board(_stone, played_field){
	// check ifany  group exists
	check_neighbors_make_groups(_stone, played_field);
	
	// TODO need the neighboring groups to check only them in the below function, use the last group created 
	//		and check for it's neigbors
	
	// > TODO need to add invounerability for the last placed stone
	// TODO forbid move that will make the whole new group surrounded/ maybe add forbiden fields based on this?
	// maybe just check self first always and if 
	// TODO need to add forbiden fields / atari
	var neighbor_groups = get_field_neighbor_groups(played_field, false);
	check_surrounded_and_remove(neighbor_groups);
	
}

// 	// > TODO need to add invounerability for the last placed stone

// check if new group is fully surrounded and if it is, do not do anything, and keep the same
// stone in order