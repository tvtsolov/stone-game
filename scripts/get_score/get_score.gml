

function get_score(){
	
	var empty_zones		= global.empty_zones;
	var empty_zones_num = array_length(empty_zones);
	
	var white_score		= 0;
	var black_score		= 0;
	
	for (var i = 0; i < empty_zones_num; ++i) {
	    var empty_zone_ = empty_zones[i];
		var size_of_zone = array_length(empty_zone_.fields_);
		if empty_zone_.main_influence == -1 {
			black_score += size_of_zone;
		} else if empty_zone_.main_influence == 1 {
			white_score += size_of_zone;
		}
	}
	
	
	//TODO add dead groups
		
	var groups			= global.groups;
	var num_groups		= array_length(groups);
	for (var i = 0; i < num_groups; ++i) {
	    var group = groups[i];
		var w_infl = 0;
		var b_infl = 0;		
		if group.is_dead {
			var surr_fields = get_all_fields_around_group(group);
			var fields_num =  array_length(surr_fields);
			var fld_curr = noone;
			for (var ii = 0; ii < fields_num; ++ii) {
			    fld_curr = surr_fields[ii];
				//we check only the empty fields, based on their main influence
				if fld_curr.is_empty_field {
					if fld_curr.empty_zone.main_influence = 1 and !fld_curr.empty_zone.disputed {
						w_infl++;
					} else if  fld_curr.empty_zone.main_influence = - 1 {
						b_infl++;
					}
					if fld_curr.empty_zone.main_influence == noone {
						break;	
					}
				}
				//if (fld_curr.white_influence > fld_curr.black_influence) {
				//	w_infl = 1;
				//} else if (fld_curr.white_influence < fld_curr.black_influence)
				//{
				//	b_infl = 1;
				//}
			} // if there is more than one empty field involved with more than 1 type of infleunce, break off :
			var own_color = group.color_;
			var size_of_dead_group = array_length(group.fields_);
			if w_infl > 0 and b_infl > 0 {
				//do nothing			
			} else if w_infl > 0 and b_infl == 0 {
				if own_color == -1 { //if surrounded by the oposite color only
					white_score += size_of_dead_group*2;
				}
			} else if b_infl > 0 and w_infl == 0 {
				if own_color == 1 {  //if surrounded by the oposite color only
					black_score += size_of_dead_group*2;
				}
			}
		}
	}
	
	
	
	//
	
	global.score_zones_white += white_score + global.black_stones_hostiges*2;
	global.score_zones_black += black_score + global.white_stones_hostiges*2;
	
	//var zones =	global.board_fields_array; 
	//var size = global.board_size;
	//var score_white				= 0;
	//var score_black				= 0;
		
		
	//for (var i = 0; i < size; ++i) {
	//	for (var ii = 0; ii < size; ++ii) {
	//		var field = FIELD[i][ii];
	//		//check zone
	//		var w_influenced = 0;
	//		var b_influenced = 0;

	//		// this resets the influences to 0 if the area is disputed and empty
	//		if field.empty_zone != noone and field.empty_zone.disputed {  //empty_zone holds a reference to one of the empty zones if it's an empty zone
	//			// if one field has disputed area, skip the zone completely
	//			b_influenced = 0;
	//			w_influenced = 0;
	//			continue;
	//		} else if (field.stone != noone and field.stone.group_.is_dead) or (field.empty_zone != noone) {
	//			//	if it's a dead group
	//			// or a normal empty zone that is surrounded go here:
				
	//			// check if the field is residing inside a disputed area
	//			if field.stone != noone and field.stone.group_.is_dead {
	//				if group_is_in_disputed_teritory(field.stone.group_){
	//					continue;	
	//				} else { //if they are surrounded, and it's clear this is the oponent's teritory
	//					var outside_influence = get_all_fields_around_group(field.stone.group_);
	//					if outside_influence[0].white_influence > outside_influence[0].black_influence {
	//						outside_influence = color_type.white;
	//					} else {
	//						outside_influence = color_type.black;
	//					}
						
	//					var col = field.stone.color_;
	//					if col = -1 {
	//						if outside_influence =  color_type.white {
	//							score_white ++;
	//						}
	//					} else if col = 1 {
	//						if outside_influence =  color_type.black {
	//							score_black ++;
	//						} 
	//					}
	//				}
	//			}
				
	//			if field.white_influence > 0 and field.black_influence == 0 {

	//				if b_influenced > 0 { // if this zone has other influences in it, skip it completely
			//			w_influenced = 0;	
			//			b_influenced = 0;
			//			continue;
			//		}
			//		w_influenced++;
				
			//	} else if field.black_influence > 0 and field.white_influence == 0 {
				
			//		if w_influenced > 0 { // if this zone has other influences in it, skip it completely
			//			b_influenced = 0;
			//			w_influenced = 0;
			//			continue;
			//		}
			//		b_influenced++;
			//	} 
			//}
			
		//	score_white += w_influenced;
		//	w_influenced = 0;
		//	score_black += b_influenced; 
		//	b_influenced = 0;
		//}
	//}
	
	
	
	//global.score_zones_white += score_white + global.black_stones_hostiges;
	
	//global.score_zones_black += score_black + global.white_stones_hostiges;
	
	
	
}

