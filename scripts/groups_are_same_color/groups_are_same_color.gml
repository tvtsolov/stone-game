function groups_are_same_color(arr_groups){

	var colr = 0;
	var size = array_length(arr_groups);
	var result = true;
	
	for (var i = 0; i < size; ++i) {
		var group_curr = arr_groups[i];
		if colr == 0 {
			colr = group_curr.color_;
		}
		if colr != group_curr.color_ {
			return false;
		}
	}
	
	if size > 0 {
		return result;
	} else {
		show_debug_message("ERROR: The passed array is empty");
		return false;
		
	}
}