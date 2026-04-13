///@desc returns true or false if the zone is an eye, also sets the zone flag to is_real_eye, also sets the color by chaning the b/w influence variable

///@param {Struct} zone 

function zone_is_owned_by_one_group(zone){

	var size = array_length(zone.fields_);
	var neighbors = [];  // single fields, next to the zone
	var possible_eye = 0;
	
	// currently checking only one field zones
	if size == 1 {

			var fld_to_check = zone.fields_[0];
 		   var row = fld_to_check.row;
			var col = fld_to_check.col; 
			
			//up
			if row > 0 
			{
				var neighbor_up = FIELD[row-1][col];
				if neighbor_up.stone != noone  /*and !neighbor_up.stone.group_.is_dead*/  {
					if array_length(neighbors) > 0 {
						if neighbors[0].stone.chained_group != neighbor_up.stone.chained_group {
							//is not an eye, break, flag etc...
							return false;
						} else {
							
							array_push(neighbors, neighbor_up); 
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
				if neighbor_right.stone != noone  /*and !neighbor_right.stone.group_.is_dead*/  {
					if array_length(neighbors) > 0 {
						if neighbors[0].stone.chained_group != neighbor_right.stone.chained_group {
							//is not an eye, break, flag etc...
							return false;
						} else {
							array_push(neighbors, neighbor_right); 
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
				if neighbor_down.stone != noone /*and !neighbor_down.stone.group_.is_dead*/ {
					if array_length(neighbors) > 0 
					{
						if neighbors[0].stone.chained_group != neighbor_down.stone.chained_group {
							//is not an eye, break, flag etc...
							return false;
						} else {
							array_push(neighbors, neighbor_down); 
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
				if neighbor_left.stone != noone  /*and !neighbor_left.stone.group_.is_dead*/  {
					if array_length(neighbors) > 0 {
						if neighbors[0].stone.chained_group != neighbor_left.stone.chained_group {
							//is not an eye, break, flag etc...
							return false;
						} else {
							array_push(neighbors, neighbor_left); 
						}
					} else {
						array_push(neighbors, neighbor_left);  
					}
				}
			
			} else { /* edge */ } 
		 
			possible_eye = fld_to_check;


		if is_same_group(neighbors) { // checks neighbors
			possible_eye.empty_zone.is_real_eye = true;
			array_push(neighbors[0].stone.group_.eyes, possible_eye);
			if neighbors[0].stone.group_.color_ == 1 {
				possible_eye.white_influence = 1;
			} else if neighbors[0].stone.group_.color_ == -1 {
				possible_eye.black_influence = 1;
			}
			return true; // is eye for sure
		} 
		possible_eye.empty_zone.is_possible_eye = true;
	}
	
	return false;
}