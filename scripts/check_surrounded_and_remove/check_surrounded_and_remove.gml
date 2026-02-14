/// @desc Function Description
function check_surrounded_and_remove(groups_to_check = undefined){
	var grps = 0;
	if groups_to_check != undefined {
		grps = groups_to_check;
	} else {
		grps = GROUPS;
	}
	var size = array_length(grps);
	var groups_to_remove = array_create(0);

	// check all groups if surrounded
for (var i = 0; i < size; ++i) {
		 var group_current = grps[i];
		 var group_color = group_current.color_;
		 var fields = group_current.fields_;
		 var fields_count = array_length(fields);
		 var is_surrounded = true;
		 //check all edges for the current group
		 
#region ******FIELD CHECK******

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
				if field.col < 8 {
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
				if field.row < 8 {
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
#endregion ******FIELD CHECK******
		//ALL FIELDS HAVE BEEN SCANNED
		
		if is_surrounded {
			array_push(groups_to_remove, grps[i]);
		}
	}
	
	// remove groups that are surrounded, from the big GROUPS
	
	var groups_to_remove_num = array_length(groups_to_remove);
	for (var i = 0; i < groups_to_remove_num; ++i) {
		
		var group_to_remove_ref = groups_to_remove[i];
		
		temp_target = group_to_remove_ref;
		var index = array_find_index(GROUPS, function(_e, _i)
		{
			 return _e == temp_target;
		});
			//for debuging
			if index = -1{
				var test = 325;	
			}
		
		
	   var num_of_fields_to_free = array_length(GROUPS[index].fields_);
		
		for (var ii = 0; ii < num_of_fields_to_free; ++ii) {
			var fld_to_empty = GROUPS[index].fields_[ii];
			with (fld_to_empty.stone) {
				instance_destroy();	
			}
			fld_to_empty.stone = noone;
	}
		
	//delete GROUPS[index];
	array_delete(GROUPS, index, 1);
			
	}
	
}