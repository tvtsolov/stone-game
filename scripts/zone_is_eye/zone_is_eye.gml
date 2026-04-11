///@desc returns -1 if the zone is not an eye, and if it is it returns the chained group reference that owns it

function zone_is_eye(zone){

	var size = array_length(zone.fields_);
	var neighbors = [];
	
	
	for (var i = 0; i < size; ++i) {
	   var row = zone.fields_[i].row;
		var col = zone.fields_[i].col; 
		//up
		 
		if row > 0 
		{
			var neighbor_up = FIELD[row-1][col];
			if neighbor_up.stone != noone and !neighbor_up.stone.group_.is_dead {
				if array_length(neighbors) > 0 {
					if neighbors[0].stone.chained_group != neighbor_up.stone.chained_group {
						//is not an eye, break, flag etc...
						return -1;
					}
				} else {
					array_push(neighbors, neighbor_up);
				}
			}
			
		} else { /* edge */ }
		 
		//right
		 
		if col < global.board_size -1 
		{
			var neighbor_right = FIELD[row][col+1];		
			if neighbor_right.stone != noone and !neighbor_right.stone.group_.is_dead {
				if array_length(neighbors) > 0 {
					if neighbors[0].stone.chained_group != neighbor_right.stone.chained_group {
						//is not an eye, break, flag etc...
						return -1;
					}
				} else {
					array_push(neighbors, neighbor_right);
				}
			}
			
		} else { /* edge */ }
		 
		 
		//down
		 
		if row < global.board_size -1
		{
			var neighbor_down = FIELD[row+1][col];
			if neighbor_down.stone != noone and !neighbor_down.stone.group_.is_dead {
				if array_length(neighbors) > 0 
				{
					if neighbors[0].stone.chained_group != neighbor_down.stone.chained_group {
						//is not an eye, break, flag etc...
						return -1;
					}
				} else {
					array_push(neighbors, neighbor_down);
				}
			}
			
		} else { /* edge */ }
		
		//left
		if col > 0 
		{
			var neighbor_left = FIELD[row][col-1];
			if neighbor_left.stone != noone and !neighbor_left.stone.group_.is_dead {
				if array_length(neighbors) > 0 {
					if neighbors[0].stone.chained_group != neighbor_left.stone.chained_group {
						//is not an eye, break, flag etc...
						return -1;
					}
				} else {
					array_push(neighbors, neighbor_left);
				}
			}
			
		} else { /* edge */ } 
		 
	}
	
	return neighbors[0].stone.chained_group;
	
}