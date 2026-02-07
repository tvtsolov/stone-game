function merge_groups(groups_array_to_merge, played_field){
	var ar_size = array_length(groups_array_to_merge);
	var first_array = groups_array_to_merge[0];
	
	for (var i = 1; i < ar_size; ++i) {
	    first_array = array_concat(first_array, groups_array_to_merge[i]);
	}
}