function check_board(_stone, played_field, prev_state){
	
	// make new groups
	var self_group = check_neighbours_make_groups(_stone, played_field);
	
	//get the groups that are a different color
	var neighbor_groups = get_field_neighbour_groups(played_field, false);
	
	// check if the neighboring groups are now surrounded and remove them if they are
	
	check_surrounded_and_remove(neighbor_groups, self_group, prev_state);
	
}

