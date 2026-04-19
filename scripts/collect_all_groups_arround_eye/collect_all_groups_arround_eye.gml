function collect_all_groups_arround_eye(eye){
	
	
	var groups = [];
	
	var size = array_length(eye);
		
	var row			= eye.row;
	var col			= eye.col;
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

	return groups;
}