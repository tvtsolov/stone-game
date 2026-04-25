

function assign_eye_to_groups(eye, real_eyes = true){
	
	var row = eye.fields_[0].row;
	var col = eye.fields_[0].col;
	
	var neighbor_groups = [];

	// up group
	if row > 0 {
		var fld = FIELD[row-1][col];
		var group = fld.stone.group_;
		if !array_contains(neighbor_groups, group) {
			array_push(neighbor_groups, group);
			if !array_contains(group.eyes, eye){
				array_push(group.eyes, eye);
			}
		}
		
	}
	
	// right group
	if col < global.board_size-1 {
		var fld = FIELD[row][col+1];
		var group = fld.stone.group_;
		if !array_contains(neighbor_groups, group) {
			array_push(neighbor_groups, group);
			if !array_contains(group.eyes, eye){
				array_push(group.eyes, eye);
			}
		}
	}
	
	// down group
	if row < global.board_size-1 {
		var fld = FIELD[row+1][col];
		var group = fld.stone.group_;
		if !array_contains(neighbor_groups, group) {
			array_push(neighbor_groups, group);
			if !array_contains(group.eyes, eye){
				array_push(group.eyes, eye);
			}
		}
	}	
	
	// left group
	if col > 0 {
		var fld = FIELD[row][col-1];
		var group = fld.stone.group_;
		if !array_contains(neighbor_groups, group) {
			array_push(neighbor_groups, group);
			if !array_contains(group.eyes, eye){
				array_push(group.eyes, eye);
			}
		}
	}
	
}