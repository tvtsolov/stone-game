function get_score(){
	
	var zones =	global.empty_zones;
	var size = array_length(zones);
	var score_white				= 0;
	var score_black				= 0;
		
		
	for (var i = 0; i < size; ++i) {
		
		//check zone
		var w_influenced = 0;
		var b_influenced = 0;
		var zone = zones[i];
		var size_zone = array_length(zone.fields_);
		
		//check 1 zone fields
	   for (var ii = 0; ii < size_zone; ++ii) {
		   var field = zone.fields_[ii];
			if field.white_influence > 0 and field.black_influence = 0 {
				
				if b_influenced > 0 { // if this zone has other influences in it, skip it completely
					w_influenced = 0;	
					b_influenced = 0;
					break;
				}
				w_influenced++;
				
			} else if field.black_influence > 0 and field.white_influence = 0 {
				
				if w_influenced > 0 { // if this zone has other influences in it, skip it completely
					b_influenced = 0;
					w_influenced = 0;
					break;
				}
				b_influenced++;
			} else if field.black_influence > 0 and field.white_influence > 0 { 
				// if one field has disputed area, skip the zone completely
					b_influenced = 0;
					w_influenced = 0;
					break;
			}
		}
		score_white += w_influenced;
		w_influenced = 0;
		score_black += b_influenced; 
		b_influenced = 0;
	}
	
	global.score_zones_white += score_white + global.black_stones_hostiges;
	
	global.score_zones_black += score_black + global.white_stones_hostiges;
	
}

