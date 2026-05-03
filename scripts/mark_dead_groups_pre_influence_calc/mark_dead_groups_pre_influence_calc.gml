function mark_dead_groups_pre_influence_calc(){
	var size = array_length(global.groups);
	
	for (var i = 0; i < size; ++i) {
		var group = global.groups[i];
		var group_size = array_length(group.fields_);
		var linked_to_others = array_length(group.linked_to);
		var edges_num = array_length(group.edges);
		
		if linked_to_others == 0 { 
			if group_size <= 4 
			{
				group.is_dead = true;
			} 
		} else if group_size < 11 and edges_num < 2 and linked_to_others == 0
		{
			group.is_dead = true;
		} 
	}
	
	/*
	 for linked groups the dead linked groups are:
	 - ones that have only two elements and both elements are less than 5 fields and has no edges
	 - 
	
	
	*/
	
	
}