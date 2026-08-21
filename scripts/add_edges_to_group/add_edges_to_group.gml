function add_edges_to_group(group){
	
	var size = array_length(group.fields_);
	for (var i = 0; i < size; ++i) {
		var field = group.fields_[i];
		
	   if field.row == 0 
			or field.col == 0 
			or field.row == global.board_size-1 
			or field.col == global.board_size-1 
			{	
				var edge = instance_create_layer(-2, -2, "fields", o_edge);
				edge.row = field.row;
				edge.col = field.col;
			
			
				array_push(group.edges, edge);
			}
			
			

	}
}