/// @desc Function Description
function check_surrounded_and_remove(groups_to_check){

	var grps = groups_to_check;

	var size = array_length(grps);
	var groups_to_remove = array_create(0);

	// check all groups if surrounded
for (var i = 0; i < size; ++i) {
	var is_surrounded = check_surrounded(grps[i]);
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
		var test = 4235;	
	}
	
}