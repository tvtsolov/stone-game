function check_surrounded(group_to_check){
	
	var group_current = group_to_check;
	var group_color = group_current.color_;
	var fields = group_current.fields_;
	var fields_count = array_length(fields);
	var is_surrounded = true;
		 
	for (var ii = 0; ii < fields_count; ++ii) {
			 var field = fields[ii];
				if field.row > 0 {
					//-------------------UP exists
					var stone = FIELD[field.row-1][field.col].stone;
					if stone != noone {
						if stone.color_ != group_color {
							//same color, same group; 
						}
					} else {
						//empty field;
						is_surrounded = false;
						break;
					}
				} else {
					//edge field;
				}
				if field.col < BOARD_SIZE-1 {
					//-------------------RIGHT exists
					var stone = FIELD[field.row][field.col+1].stone;
					if stone != noone {
						if stone.color_ != group_color {
							//same color, same group;
						}
					} else {
						//empty field; 
						is_surrounded = false;
						break;
					}
				} else {
					//edge field;
				}
				if field.row < BOARD_SIZE-1 {
					//-------------------DOWN exists
					var stone = FIELD[field.row+1][field.col].stone;
					if stone != noone {
						if stone.color_ != group_color {
							//same color, same group; 
						}
					} else {
						//empty field; 
						is_surrounded = false;
						break;
					}
				} else {
					//edge
				}
				if field.col > 0 {
					//-------------------LEFT exists
					var stone = FIELD[field.row][field.col-1].stone;
					if stone != noone {
						if stone.color_ != group_color {
							//same color, same group; 
						}
					} else {
						//empty field; 
						is_surrounded = false;
						break;
					}
				} else {
					//edge field
				}
	}
	
	return is_surrounded;
}