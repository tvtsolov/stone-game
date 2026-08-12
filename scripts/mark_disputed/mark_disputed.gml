function mark_disputed(){

	//mark based on this:
	
	//if field.black_influence > 0 and field.white_influence > 0
	
	var fields = global.board_fields_array;
	var size = global.board_size;
	
for (var i = 0; i < size; ++i) {
	var row = fields[i];
	
		for (var ii = 0; ii < size; ++ii) {
			var field = row[ii];

			if field.empty_zone != noone {
				if !field.empty_zone.disputed {
					if field.black_influence > 0 and field.white_influence > 0 {
						field.empty_zone.disputed = true; 
					}
				}
			}
		}
	}
	
	//check each empty group if it contains more than one type of influence
	
	var empty_groups_num = array_length(global.empty_zones);
	
	for (var i = 0; i < empty_groups_num; ++i) {
		var infl = 0;
		var empty_zone = (global.empty_zones[i]);
		var zone_size = array_length(empty_zone.fields_);
		for (var ii = 0; ii < zone_size; ++ii) {

			var field = empty_zone.fields_[ii];
			
			if field.black_influence > 0 and field.white_influence == 0 {
				if infl == 0 {
					infl = -1;
				}
				else if infl == 1
				{ 
					empty_zone.disputed = true;
					break; 
				}
			} else if field.black_influence == 0 and field.white_influence > 0 {
				if infl == 0 {
					infl = 1;
				}
				else if infl == -1
				{ 
					empty_zone.disputed = true;
					break; 
				}
			}
				
			
			if (field.black_influence > 0 and field.white_influence > 0)
			or
			(infl == 1 and field.black_influence > 0)
			or 
			(infl == -1 and field.white_influence > 0)
			{
				empty_zone.disputed = true;
				break;
			}
		}
		 
		 
	}
	
	

}