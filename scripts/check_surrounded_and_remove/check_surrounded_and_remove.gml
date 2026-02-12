/// @desc Function Description
function check_surrounded_and_remove(groups_to_check = undefined){
	var grps = 0;
	if groups_to_check != undefined {
		grps = groups_to_check;
	} else {
		grps = GROUPS;
	}
	var size = array_length(grps);
	var groups_indices_to_remove = array_create(0);

	// check all groups if surrounded
	for (var i = 0; i < size; ++i) {
	    
		 var group_current = grps[i];
		 var group_color = group_current.color_;
		 var fields = group_current.fields_;
		 var fields_count = array_length(fields);
		 
		 //check all edges for the current group
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
						break;
					}
				}
				if field.col < 8 {
					//-------------------RIGHT exists
					var stone = FIELD[field.row][field.col+1].stone;
					if stone != noone {
						if stone.color_ != group_color {
							//same color, same group;
						}
					} else {
						//empty field; 
						break;
					}
				} else {
					//empty field; 
					break;
				}
				if field.row < 8 {
					//-------------------DOWN exists
					var stone = FIELD[field.row+1][field.col].stone;
					if stone != noone {
						if stone.color_ != group_color {
							//same color, same group; 
						}
					} else {
						//empty field; group is not surrounded
						break;
					}
				} else {
					//end of the board
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
						break;
					}
					
				} else {
					//empty field; break?
				}
			array_push(groups_indices_to_remove, i);
		 }
	}
	
	// remove duplicates
	groups_indices_to_remove = array_unique(groups_indices_to_remove);
	// remove groups that are surrounded
	
	var groups_to_remove_num = array_length(groups_indices_to_remove);
	for (var p = 0; p < groups_to_remove_num; ++p) {
		var index = groups_indices_to_remove[p];
	   var num_of_fields_to_free = array_length(grps[index].fields_);
		
		for (var ii = 0; ii < num_of_fields_to_free; ++ii) {
			var fld_to_empty = grps[index].fields_[ii];
			with (fld_to_empty.stone) {
				instance_destroy();	
			}
			fld_to_empty.stone = noone;
	}
		
	delete grps[index];
	array_delete(grps, index, 1);
			
	}
	
}