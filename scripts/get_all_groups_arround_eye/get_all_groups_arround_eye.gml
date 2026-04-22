function get_all_groups_arround_eye(eye, exclude_groups = noone){
	
	
	var groups = [];
	
	var size = array_length(eye);
		
	var row			= eye.fields_[0].row;
	var col			= eye.fields_[0].col;
	var fld_temp	= 0;
		
	//up
	if row > 0 {
		fld_temp = FIELD[row-1][col];
		if !array_contains(groups,  fld_temp.stone.group_)
		{
			array_push(groups, fld_temp.stone.group_);
		}
	}
	
	//right
	if col < global.board_size-1 {
		fld_temp = FIELD[row][col+1];
		if !array_contains(groups,  fld_temp.stone.group_)
		{
			array_push(groups,  fld_temp.stone.group_);
		}
	}
	
	//down
	if row < global.board_size-1 {
		fld_temp = FIELD[row+1][col];
		if !array_contains(groups,  fld_temp.stone.group_)
		{
			array_push(groups,  fld_temp.stone.group_);
		}
	}
	
	//left
	if col > 0 {
		fld_temp = FIELD[row][col-1];
		if !array_contains(groups,  fld_temp.stone.group_)
		{
			array_push(groups, fld_temp.stone.group_);
		}
	}

	
	if exclude_groups != noone {
		var new_groups = get_new_elements(groups, exclude_groups);
		return new_groups;
	}
	return groups;
}