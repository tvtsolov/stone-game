function calculate_influence_fully(){
	
	var zones = global.empty_zones;
	var zones_num = array_length(zones);
	
	for (var i = 0; i < zones_num; ++i) {
		var zone = zones[i];
		if zone.disputed {
			continue;
		}
		// check and assign the primary influence to the zone in question, for proper and easier calculation or the score
		
	    var num_of_fields = array_length(zone.fields_);
		for (var ii = 0; ii < num_of_fields; ++ii) {
			var field = zone.fields_[ii];
		    if field.white_influence > 0 {
				zone.main_influence = 1;
				break;
			} else if field.black_influence > 0 {
				zone.main_influence = -1;
				break;
			}
		}
	}
}