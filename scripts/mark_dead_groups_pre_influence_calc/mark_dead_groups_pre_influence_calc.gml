function mark_dead_groups_pre_influence_calc(){
	
	var size = array_length(global.groups);
	
	for (var i = 0; i < size; ++i) {
		var group = global.groups[i];
		var group_size = array_length(group.fields_);
		var linked_to_others = array_length(group.linked_to);
		var edges_num = array_length(group.edges);
		
		if linked_to_others == 0 { 
			if group_size <= 4 
			or
			group_size < 11 and edges_num < 2
			{
				group.is_dead = true;
			}
		}
	}
	
}