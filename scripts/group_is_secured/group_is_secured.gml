///@ Checks all chained groups if each one has at least two eyes (checking ultimately if the group is secured)

function group_is_secured(group, checked_groups = noone){
	
	if !array_contains(checked_groups, group){
		array_push(checked_groups, group);
	}
	
	var eyes = group.eyes;
	var eyes_num = array_length(eyes);
	
	if eyes_num < 2 {
		return false;
	}
	
	var valid_eyes = 0;
	
	for (var i = 0; i < eyes_num; ++i) {
		
		var eye = eyes[i];
		
	   var eye_groups = get_all_groups_arround_eye(eye, checked_groups);
		
		var groups_num = array_length(eye_groups);
		if groups_num = 0 {
			group.secured = true;
			return true;
		}
		
		for (var ii = 0; ii < groups_num; ++ii) {
			var eye_group = eye_groups[ii];
			if array_length(eye_group.eyes) < 2 {
				return false;
			} else {
				// check each group
				if group_is_secured(eye_group, checked_groups) {
					valid_eyes++;	
				}
			}
			valid_eyes++;
		}
	}
	
	if valid_eyes >= 2{
		group.secured = true;	
		return true;
	}
	
}