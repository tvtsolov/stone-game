function merge_groups(groups_to_merge, played_field){
	
	// groups_array_to_merge >> is Struct[]
	
	// add the new group array to the fields[] in the first group
	// destroy the old group
	// add the stone to the big group
	
	var ar_size_groups_to_merge = array_length(groups_to_merge);
	var first_group = variable_clone(groups_to_merge[0]);
	update_stones_group_refs_in_array(first_group, first_group.fields_)
	
	for (var i = 1; i < ar_size_groups_to_merge; ++i) {
		update_stones_group_refs_in_array(first_group, groups_to_merge[i].fields_);
	   first_group.fields_ = array_concat(first_group.fields_, groups_to_merge[i].fields_);
	}
	
	var GROUPSsize = array_length(GROUPS);
	var index_array = array_create(0);
	var newGROUPS = array_create(0);
	
	for (var i = 0; i < ar_size_groups_to_merge; ++i) {
		var index = array_get_index(GROUPS, groups_to_merge[i]);
		if index != -1 {
			array_push(newGROUPS, GROUPS[i]);
		}
	}	
	GROUPS = newGROUPS;
	

	
	// remove the groups that are redundant from GROUPS
		
	add_field_to_group(played_field, first_group);
	array_push(GROUPS, first_group);
}



