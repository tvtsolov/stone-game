function eyes_group_checks(eye){
	
	
	var groups = get_all_groups_arround_eye(eye);
	var size = array_length(groups);
	
	for (var i = 0; i < size; ++i) {
	    
		var group = groups[i];
		if array_length(group.eyes) >= 2 {
			continue;
		} else {
			return false;
			//check recursively each possible eye
			
			
			//each possible eye > get it's groups > has 2 eyes? 
				// no > return false
				// yes > return true
				
				//if even one of the groups returns false
			
			// each possible eye to be a real eye needs to have each of it's groups having at least 2 more possible eyes that are shared with another group
			// or 
			// one "real" eye (my tag means "surrounded by only one group with max od 1 liberty")
		}
	}
	return true;
}