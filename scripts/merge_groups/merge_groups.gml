function merge_groups(groups_to_merge, played_field){
	
	// groups_array_to_merge >> is Struct[]
	
	// add the new group array to the fields[] in the first group
	// destroy the old group
	// add the stone to the big group
	
	var ar_size_groups_to_merge = array_length(groups_to_merge);
	var first_group = groups_to_merge[0];
	

	for (var i = 1; i < ar_size_groups_to_merge; ++i) {
		
	    first_group.fields_ = array_concat(first_group.fields_, groups_to_merge[i].fields_);
	}
	

	// find the redundant groups and delete them from GROUPS/global.groups.fields_
	var GROUPSsize = array_length(GROUPS);
	var new_array = array_create(0);
	
		for (var i = 0; i < GROUPSsize; ++i) {
			for (var ii = 1; ii < ar_size_groups_to_merge; ++ii) {
				if !array_contains(groups_to_merge, GROUPS[i]){
					array_push(new_array,GROUPS[i]);
				}
			}
		}
		GROUPS = new_array;
		array_push(GROUPS, first_group);
		//todo new group stones need new group references;
		
		add_field_to_group(played_field, first_group);
}



