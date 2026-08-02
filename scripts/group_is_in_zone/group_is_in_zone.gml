function group_is_in_zone(group_, empty_zone_){
	
	var fields_arround_group = get_all_fields_around_group(group_);
	var size = array_length(fields_arround_group) 
	for (var i = 0; i < size; ++i) {
		if array_contains(empty_zone_.fields_,fields_arround_group[i])
		{
			return true;
		}
	}
	return false;
}