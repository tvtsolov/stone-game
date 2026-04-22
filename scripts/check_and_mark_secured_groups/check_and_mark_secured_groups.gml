function check_and_mark_secured_groups(){
	var groups = global.groups;
	var size = array_length(groups);
	//TODOTODO
	for (var i = 0; i < size; ++i) {
		var group = groups[i];
		var eyes = group.eyes;
		var eyes_num = array_length(eyes);
		var secured_eyes;
		
		if eyes_num <= 1 {
			continue; //skip group
		} else {
			var valid_eyes = 0;
			//at least 2 eyes are necessary to have the group to be secured
			for (var ii = 0; ii < eyes_num; ++ii) {	
				// need each group that's next to the eye to have 2 eyes at least and do on until the end
				// we need at least 2 eyes to have all secured groups (having 2 eyes)
				group_is_secured(group, []);
			}
		}
	}
	
}