function merge_groups(groups_to_merge, played_field){
	
	// groups_array_to_merge >> is Struct[]
	
	// add the new group array to the fields[] in the first group
	// destroy the old group
	// add the stone to the big group
	
	var ar_size_groups_to_merge = array_length(groups_to_merge);
	var first_group = groups_to_merge[0];
	
	//update_stones_group_refs_in_group(first_group, new_array_groups);
	
	for (var i = 1; i < ar_size_groups_to_merge; ++i) {
		update_stones_group_refs_in_array(first_group, groups_to_merge[i].fields_);
	   first_group.fields_ = array_concat(first_group.fields_, groups_to_merge[i].fields_);
	}
	
	var GROUPSsize = array_length(GROUPS);
	var new_array_groups = array_create(0);
	
	for (var i = 0; i < GROUPSsize; ++i) {
		for (var ii = 1; ii < ar_size_groups_to_merge; ++ii) {
			if !array_contains(groups_to_merge, GROUPS[i]){
				array_push(new_array_groups,GROUPS[i]);
			}
		}
	}
	add_field_to_group(played_field, first_group);
	
	GROUPS = new_array_groups;
	array_push(GROUPS, first_group);
}



