function update_stones_group_refs_in_group(new_group_reference, array_groups_){
	
	var group_count = array_length(array_groups_);
	
	for (var i = 0; i < group_count; ++i) {
		
		var field_count = array_length(array_groups_[i]);
		var fields_ar = array_groups_[i].fields_;
		
		for (var ii = 0; ii < field_count; ++ii) {
		    fields_ar[ii].stone.group_ = new_group_reference;
		}
		
	}
	
}


