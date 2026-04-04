function mark_dead_groups(){
	var size = array_length(global.groups);
	
	for (var i = 0; i < size; ++i) {
		var group = global.groups[i];
		var group_size = array_length(group.fields_);
		var linked_to_others = array_length(group.linked_to);
		
		if linked_to_others == 0 { 
			if group_size <= 4 
			{
				group.is_dead = true;
			} else if group_size < 11 
			{
			   group.is_dead = true;
			}
		}
	}
	
}