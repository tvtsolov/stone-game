function check_shared_eyes_mark_secured(){
	
	var groups = global.groups;
	var size = array_length(groups);
	var multy_poss_eyes_groups = [];
	
	//sort out only the groups with multiple eyes
	for (var i = 0; i < size; ++i) {
		var group = groups[i];
		var pos_eyes_num =  array_length(group.possible_eyes);	 
		
		if pos_eyes_num > 1 {
			for (var ii = 0; ii < pos_eyes_num; ++ii) {
				if !array_contains(multy_poss_eyes_groups, group){
					array_push(multy_poss_eyes_groups, group);
				}
			}
		}
	}
	
	var multy_poss_eye_groups_num = array_length(multy_poss_eyes_groups);
	
	for (var i = 0; i < multy_poss_eye_groups_num-1; ++i) {
		var group_temp_curr = multy_poss_eyes_groups[i];
		for (var ii = i + 1 ; ii < multy_poss_eye_groups_num; ++ii) {
			var group_temp_next = multy_poss_eyes_groups[ii];
			 
			var have_at_least_two_matching_eyes = check_matching_eyes_in_two_groups(group_temp_curr, group_temp_next);
			if have_at_least_two_matching_eyes {
				group_temp_curr.secured = true;
				group_temp_next.secured = true;
			}
		}
	}
	
	
}