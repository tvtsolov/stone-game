


function update_stones_group_refs_in_array(new_group_reference, array_fields_){
		
	var field_count = array_length(array_fields_);
		
	for (var i = 0; i < field_count; ++i) {
		   array_fields_[i].stone.group_ = new_group_reference;
	}
}