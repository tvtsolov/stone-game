function collect_all_neighbours_arround_fields(fields){
	
	
	var neighbours[];
	
	var size = array_length(fields);

	for (var i = 0; i < size; ++i) {
		
		var fld			= fields[i];
		var row			= fld.row;
		var col			= fld.col;
		var fld_temp	= 0;
		
		//up
		if row > 0 {
			fld_temp = FIELD[row-1][col];
			if fld_temp.stone != noone
			{
				if fld_temp.is_empty_field = false
					array_push(neighbours, fld_temp);
			}
		}
	
		//right
		if col < global.board_size-1 {
			fld_temp = FIELD[row][col+1];
			if fld_temp.stone != noone
			{
				if fld_temp.is_empty_field = false
					array_push(neighbours, fld_temp);
			}
		}
	
		//down
		if row < global.board_size-1 {
			fld_temp = FIELD[row+1][col];
			if fld_temp.stone != noone
			{
				if fld_temp.is_empty_field = false
					array_push(neighbours, fld_temp);
			} 
		}
	
		//left
		if col > 0 {
			fld_temp = FIELD[row][col-1];
			if fld_temp.stone != noone
			{
				if fld_temp.is_empty_field = false
					array_push(neighbours, fld_temp);
			} 
		}
	}
	
	
	return neighbours;
}