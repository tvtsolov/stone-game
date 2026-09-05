

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

				} // if there is more than one empty field involved with more than 1 type of infleunce, break off :
				var own_color = group.color_;
				var size_of_dead_group = array_length(group.fields_);
				if w_infl > 0 and b_infl > 0 or w_infl == b_infl {
					//do nothing			
				} else if w_infl > 0 and b_infl == 0 {
					if own_color == -1 { //if surrounded by the oposite color only
						if !o_game_manager.negotiation_phase {
							white_score += size_of_dead_group*2;
						} else {
							white_score += size_of_dead_group;
						}
					}
				} else if b_infl > 0 and w_infl == 0 {
					if own_color == 1 {  //if surrounded by the oposite color only
						if !o_game_manager.negotiation_phase {
							black_score += size_of_dead_group*2;
						} else {
							black_score += size_of_dead_group;
						}
					}
				}
			}
		}
	
	
	global.score_zones_white += white_score + global.black_stones_hostiges;
	global.score_zones_black += black_score + global.white_stones_hostiges;
	
	
	// display the score
	
	show_debug_message("BLACK: " + string(global.score_zones_black));
	show_debug_message("WHITE: " + string(global.score_zones_white));
	
}

