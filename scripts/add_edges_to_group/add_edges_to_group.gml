function add_edges_to_group(group){
	
	var size = array_length(group);
	for (var i = 0; i < size; ++i) {
		var field = group.fields_[i];
	   if field.row == 0 or field.col[i] == 0 {	
			var edge = instance_create_layer(-2, -2, "fields", o_edge,
			{
				row : field.row,
				col : field.col
			});
			array_push(group.edges, edge);
		}
	}
	
	
	
	
}