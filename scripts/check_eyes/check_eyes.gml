function check_eyes(){
	
	var size = array_length(global.empty_zones);
	
	// scan all single field zones based on single group
	for (var i = 0; i < size; ++i) {
	    
			var zone = global.empty_zones[i];
			var size_zone = array_length(zone.fields_);
		
		if size_zone == 1 {
			var field = zone.fields_[0];
			zone_is_owned_by_one_group(zone); // only marks possible eyes, not really doing what it looks like :)
			// uses black/white_influence as a flag to carry the color
		}

	}
	
	
	
	// scan based on diagonal liberties
	
	for (var i = 0; i < size; ++i) {
	    
		var zone = global.empty_zones[i];
		var size_zone = array_length(zone.fields_);
		
		if zone.is_possible_eye {
			for (var ii = 0; ii < size_zone; ++ii) {
			 
				var field = zone.fields_[ii];
				zone.is_real_eye = is_real_eye_second_checks(zone.fields_[0]);
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