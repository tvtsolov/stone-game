function get_eyes(){
	
	var size = array_length(global.empty_zones);
	for (var i = 0; i < size; ++i) {
	    
		var zone = global.empty_zones[i];
		var size_zone = array_length(zone.fields_);
		 
		for (var ii = 0; ii < size_zone; ++ii) {
			 
		   var field = zone.fields_[ii];
			var is_eye = zone_is_eye(zone);
			if is_eye != -1 {
				is_eye.eyes ++;
			}
		}
	}	
	
}