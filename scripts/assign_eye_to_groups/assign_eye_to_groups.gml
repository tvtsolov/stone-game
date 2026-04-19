

function assign_eye_to_groups(eye, real_eyes = true){
	
	var row = eye.row;
	var col = eye.col;
	
	//TODOTODO check if this is not all the same group
	var neighbor_groups = [];
	
	if real_eyes {
	
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
	
	} else //are possible eyes
	{
		// up group
		if row > 0 {
			var fld = FIELD[row-1][col];
			var group = fld.stone.group_;
			if !array_contains(neighbor_groups, group) {
				array_push(neighbor_groups, group);
				if !array_contains(group.possible_eyes, eye){
					array_push(group.possible_eyes, eye);
				}
			}
		
		}
	
		// right group
		if col < global.board_size-1 {
			var fld = FIELD[row][col+1];
			var group = fld.stone.group_;
			if !array_contains(neighbor_groups, group) {
				array_push(neighbor_groups, group);
				if !array_contains(group.possible_eyes, eye){
					array_push(group.possible_eyes, eye);
				}
			}
		}
	
		// down group
		if row < global.board_size-1 {
			var fld = FIELD[row+1][col];
			var group = fld.stone.group_;
			if !array_contains(neighbor_groups, group) {
				array_push(neighbor_groups, group);
				if !array_contains(group.possible_eyes, eye){
					array_push(group.possible_eyes, eye);
				}
			}
		}	
	
		// left group
		if col > 0 {
			var fld = FIELD[row][col-1];
			var group = fld.stone.group_;
			if !array_contains(neighbor_groups, group) {
				array_push(neighbor_groups, group);
				if !array_contains(group.possible_eyes, eye){
					array_push(group.possible_eyes, eye);
				}
			}
		}
	}
}