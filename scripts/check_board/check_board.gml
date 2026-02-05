function check_board(_stone, _field){
	// check ifany  group exists
	if array_length(GROUPS) == 0 {
		//make a group of one stone
		var color_type = _stone.object_index = o_stone_black ? color_type.black : color_type.white;
		
		var group_array = array_create(1, _field);
		var gr = new group(group_array, color_type);
		
		array_push(GROUPS, gr);
		var gegew = 3;
	}
	
	// check if position neightours an existing froup of the same color
	
	
	
}