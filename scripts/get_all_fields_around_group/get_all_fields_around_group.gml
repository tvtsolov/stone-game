function get_all_fields_around_group(group_){
	var result = [];
	var size = array_length(group_.fields_);
	
	for (var i = 0; i < size; ++i) {
		var fld = group_.fields_[i];
		
		var row = fld.row;
		var col = fld.col;
		var fld_temp = 0;
		//up
		if row > 0 {
			fld_temp = FIELD[row-1][col];
			if !array_contains(result, fld_temp){
				array_push(result, fld_temp);
			}
		}
	
		//right
		if col < global.board_size-1 {
			fld_temp = FIELD[row][col+1];
			if !array_contains(result, fld_temp){
				array_push(result, fld_temp);
			}
		}
	
		//down
		if row < global.board_size-1 {
			fld_temp = FIELD[row+1][col];
			if !array_contains(result, fld_temp){
				array_push(result, fld_temp);
			}
		}
	
		//left
		if col > 0 {
			fld_temp = FIELD[row][col-1];
			if !array_contains(result, fld_temp){
				array_push(result, fld_temp);
			}
		}
		
	}
	return result;
	
}