function check_matching_eyes_in_two_groups(group1, group2){
	
	var num_maching_eyes = 0;
	
	var eyes_gr_1 = group1.possible_eyes;
	var eyes_gr_1_size = array_length(eyes_gr_1);
	var eyes_gr_2 = group2.possible_eyes;
	var eyes_gr_2_size = array_length(eyes_gr_2);
	
	for (var i = 0; i < eyes_gr_1_size; ++i) {
		var cur_eye_1 = eyes_gr_1[i];
		// this function really is worth it's salt only if the eyes it's checkign have exactly 2 groups
		// as neighbors
		if array_length(collect_all_groups_arround_eye(cur_eye_1)) == 2 {
			for (var ii = 0; ii < eyes_gr_2_size; ++ii) {
			
				var cur_eye_2 = eyes_gr_2[ii];
				
				if array_length(collect_all_groups_arround_eye(cur_eye_2)) == 2 {
					if cur_eye_1 == cur_eye_2 {
						num_maching_eyes++;
						if num_maching_eyes > 1 {
							return true;
						}
					}
				}
			}
		}
	}
	return false;
}