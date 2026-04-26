function check_eyes(){
	
	var size = array_length(global.empty_zones);
	
	for (var i = 0; i < size; ++i) {
	    
		var zone = global.empty_zones[i];
		var size_zone = array_length(zone.fields_);
		
		if size_zone == 1  {
			var neighbors = get_all_groups_arround_eye(zone);
			if groups_are_same_color(neighbors) {
				var field = zone.fields_[0];
				zone.is_possible_eye = true;
				assign_eye_to_groups(zone, false); 
			}
		}
	}
	
	check_and_mark_secured_groups();
	
}


/*
real eyes:
	- surrounded only by one single group only
	- each eye has only one opening diagonal field and is one field big
- if not 
	> check which single group is

mark all eyes that have only one liberty (excluding other eyes)

*/