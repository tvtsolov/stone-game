/// @description Insert description here
// You can write your code in this editor
	
	group_empty_zones();
	
	var number_of_zones = array_length(global.empty_zones);
	
	for (var i = 0; i < number_of_zones; ++i) {
		var fields = global.empty_zones[i].fields_;
		array_foreach(fields, set_surrounded_mark);	 
	}
	
	
	
	/*
	for (var i = 0; i < number_of_groups; ++i) {
		var group = global.groups[i];
		var fields_in_group = group.fields_;
		var fields_num = array_length(fields_in_group);
		var test_area = [];
		for (var ii = 0; ii < fields_num; ++ii) {
			// get ALL free fields around this one field
		   test_area = array_union(test_area, get_free_area_fields(fields_in_group[ii]));
		}	
		
		if array_length(test_area) > 0 {
			//array_push(global.empty_zones, test_area);
			array_foreach(test_area, set_surrounded_mark);
		}
	}
	*/
	
	  //field_.is_internal_field
	
	
	draw_surrounded_empty_fields = true;