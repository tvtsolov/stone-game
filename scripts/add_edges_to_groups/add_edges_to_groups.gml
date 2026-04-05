function add_edges_to_groups(){
	
	var size = array_length(global.groups);
	
	for (var i = 0; i < size; ++i) {
		
		var group = global.groups[i];
			add_edges_to_group(group);
			
	}
}