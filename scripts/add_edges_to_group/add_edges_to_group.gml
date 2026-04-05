function add_edges_to_group(group){
	
	var size = array_length(group.fields_);
	for (var i = 0; i < size; ++i) {
		var field = group.fields_[i];
		
	   if field.row == 0 or field.col == 0 {	
			var edge = instance_create_layer(-2, -2, "fields", o_edge);
			edge.row = field.row;
			edge.col = field.col;
			
			
			array_push(group.edges, edge);
			
			
			
			//TODO
			// what happens here is that I get all stones that lie on the edge fields,
			// not all surrounded edges, just the stones touching the edge of the board
			

		}
		
		// if we have more than one edge touching stone in the group it means that 
		// the surrounded group is surrounding some edges
		//  
	}
}