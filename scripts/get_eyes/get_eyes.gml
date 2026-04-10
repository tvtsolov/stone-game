function get_eyes(){

	// V first we neeed to identify which groups are linked 

	// V first check stone groups wich don't have eyes, etc = has no area surounded by it	

	// check each empty zone if it clasifies as eye
	
	/*
	a zone is an eye if 
	-it's completely surrounded by one linked group
	-consider very small(dead) single groups as fields (make zones calculate these as fields)
	
	
	
	*/
	
	// 
	
	var size = array_length(global.empty_zones);
	for (var i = 0; i < size; ++i) {
	    
		 var zone = global.empty_zones[i];
		 var size_zone = array_length(zone);
		 
		 for (var ii = 0; ii < size_zone; ++ii) {
		     
			  //get_field_neighbour_groups
			  
		 }
		 
		 
	}
	
	// is completely surrounded by one color
	
	
	
	
	
}