function mark_disputed(){

	//mark based on this:
	
	//if field.black_influence > 0 and field.white_influence > 0
	
	var fields = global.board_array;
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
	
	
	//after that extend all that are next to one of these
	

}