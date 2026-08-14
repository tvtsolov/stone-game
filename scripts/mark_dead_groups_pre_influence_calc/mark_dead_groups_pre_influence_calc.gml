function mark_dead_groups_pre_influence_calc(){
	
	var size = array_length(global.groups);
	
	for (var i = 0; i < size; ++i) {
		var group = global.groups[i];
		var group_size = array_length(group.fields_);
		var linked_to_others = array_length(group.linked_to);
		
		
		if linked_to_others < 1 { 
			if group_size <= 4 
			{
				group.is_dead = true;
				array_foreach(group.fields_, mark_all_stones_dead);
				
			}
		}
	}
	


}