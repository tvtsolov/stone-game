function check_eyes(){
	
	var size = array_length(global.empty_zones);
	
	for (var i = 0; i < size; ++i) {
	    
		var zone = global.empty_zones[i];
		var size_zone = array_length(zone.fields_);
		
		if size_zone == 1 {
			var field = zone.fields_[0];
			zone.is_possible_eye = true;
			assign_eye_to_groups(zone, false); 
		}
	}
	
	// check for 2 shared possible_eyes and mark secured:
	// check_shared_eyes_mark_secured();
	
	// check for the rest of the conditions to mark a group secure
	// mark_secured_groups_last_checks();
	
	
	// scan based on diagonal liberties
	
	for (var i = 0; i < size; ++i) {
	    
		var zone = global.empty_zones[i];
		var size_zone = array_length(zone.fields_);
		
		if zone.is_possible_eye {
			for (var ii = 0; ii < size_zone; ++ii) {
			 
				var field = zone.fields_[ii];
				
				//check which groups are alive and secured
				check_and_mark_secured_groups();
				
				
				
				// zone.is_real_eye = is_real_eye_second_checks(zone.fields_[0]);
				// need to reset the black/white_influence, check above
			}	
		}
	} 
	
}


/*
real eyes:
	- surrounded only by one single group only
	- each eye has only one opening diagonal field and is one field big
- if not 
	> check which single group is

mark all eyes that have only one liberty (excluding other eyes)

*/