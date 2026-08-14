

function get_score(){
	
	//var zones =	global.board_fields_array; 
	var size = global.board_size;
	var score_white				= 0;
	var score_black				= 0;
		
		
	for (var i = 0; i < size; ++i) {
		for (var ii = 0; ii < size; ++ii) {
			var field = FIELD[i][ii];
			//check zone
			var w_influenced = 0;
			var b_influenced = 0;

			// this resets the influences to 0 if the area is disputed and empty
			if field.empty_zone != noone and field.empty_zone.disputed {  //empty_zone holds a reference to one of the empty zones if it's an empty zone
				// if one field has disputed area, skip the zone completely
				b_influenced = 0;
				w_influenced = 0;
				continue;
			} else if (field.stone != noone and field.stone.group_.is_dead) or (field.empty_zone != noone) {
				//	if it's a dead group
				// or a normal empty zone that is surrounded go here:
				
				// check if the field is residing inside a disputed area
				if field.stone != noone and field.stone.group_.is_dead {
					if group_is_in_disputed_teritory(field.stone.group_){
						continue;	
					} else { //if they are surrounded, and it's clear this is the oponent's teritory
						var outside_influence = get_all_fields_around_group(field.stone.group_);
						if outside_influence[0].white_influence > outside_influence[0].black_influence {
							outside_influence = color_type.white;
						} else {
							outside_influence = color_type.black;
						}
						
						var col = field.stone.color_;
						if col = -1 {
							if outside_influence =  color_type.white {
								score_white ++;
							} else {
								// not necessary?
							}
						} else if col = 1 {
							if outside_influence =  color_type.black {
								score_black ++;
							} else {
								// not necessary?
							}
						}
					}
				}
				
				if field.white_influence > 0 and field.black_influence == 0 {

					if b_influenced > 0 { // if this zone has other influences in it, skip it completely
						w_influenced = 0;	
						b_influenced = 0;
						continue;
					}
					w_influenced++;
				
				} else if field.black_influence > 0 and field.white_influence == 0 {
				
					if w_influenced > 0 { // if this zone has other influences in it, skip it completely
						b_influenced = 0;
						w_influenced = 0;
						continue;
					}
					b_influenced++;
				} 
			}
			
			score_white += w_influenced;
			w_influenced = 0;
			score_black += b_influenced; 
			b_influenced = 0;
		}
	}
	
	
	
	global.score_zones_white += score_white + global.black_stones_hostiges;
	
	global.score_zones_black += score_black + global.white_stones_hostiges;
	
}

