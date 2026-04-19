function mark_secured_groups_last_checks(){
	
	var groups_all = global.groups;
	var size = array_length(groups_all);
	
	
	for (var i = 0; i < size; ++i) {
	    var group = groups_all[i];
		 var r_eyes = array_length(group.eyes);
		 var pos_eyes = array_length(group.possible_eyes);
		 
		 if r_eyes >= 2 {
			group.secured = true; 
			
		 } else if r_eyes == 1 and pos_eyes > 0  {
			 //check if at least one posible eye is secured > return true if this is the case
			for (var ii = 0; ii < pos_eyes; ++ii) {
				var pos_eye_temp = group.possible_eyes[ii];
				var grps_temp = collect_all_groups_arround_eye(pos_eye_temp);
				var siz = array_length(grps_temp);
				for (var iii = 0; iii < siz; ++iii) {
					var grp_temp = grps_temp[iii];
					if grp_temp.secured {
						group.secured = true;
						break;
					}
					if array_length(grp_temp.eyes) > 0 {
						grps_temp.secured = true;
						group.secured = true;
						break;
					}
				}
			}
			 
		 //} else if r_eyes == 0 and possible_eyes > 1 {
			// // check if the eyes are shared with the same group anywhere
			 
		 //} 

	}
	
	// has 2 eyes 
	
	
	// shares 2 possible eyes with another group
	
	
	// shares 1 possible eye with another group + the other group has at least one other group or is secured already
	
	
	
	}
}