function get_linked_groups_from_group(group){
	
	if group.checked
		return [];
	group.checked = true;
	var size = array_length(group.linked_to);
	var new_linked = [];
	
	for (var i = 0; i < size; ++i) {
	   
		var element = group.linked_to[i];
		if !element.checked {
			
			var new_arr = get_linked_groups_from_group(element);  //recursive call 
		
			new_linked = array_concat(new_arr, new_linked);
			
		}
	}
	
	array_push(new_linked, group); 
	
	return new_linked;
}