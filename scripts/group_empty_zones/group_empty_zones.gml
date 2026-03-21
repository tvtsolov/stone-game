///@desc groups all empty zones into global.empty_zones[]; starts from the first field and checks all of them

function group_empty_zones(){
	
	var fld = 0;
	for (var row = 0; row < global.board_size; ++row) {
	   for (var col = 0; col < global.board_size; ++col) {
		fld = FIELD[row][col];
		var temp_zone = -1;
		
			if fld.stone = noone {
				if fld.empty_group = noone {
					temp_zone = get_all_free_neigbour_fields(fld);
					
					//make the array into a struct and add it into the global.empty_zones
					temp_zone =  new Empty_zone(temp_zone);
					array_push(global.empty_zones, temp_zone);
					
					//give fields a reference to the zone
					var size = array_length(temp_zone.fields_);
					for (var i = 0; i < size; ++i) {
					    temp_zone.fields_[i].empty_zone = temp_zone;
					}
				}
			}
		}
	}
}