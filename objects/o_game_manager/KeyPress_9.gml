/// @description Insert description here
// You can write your code in this editor

	var number_of_groups = array_length(global.groups);
	
	for (var i = 0; i < number_of_groups; ++i) {
		var group = global.groups[i];
		var fields = group.fields_;
		var fields_num = array_length(fields);
		var test_area = [];
		for (var ii = 0; ii < fields_num; ++ii) {
		    test_area = get_free_area_fields(fields[ii], noone, noone);
		}	
		
		array_foreach(test_area, set_surrounded_mark);
	}


	  //field_.is_internal_field
	
	
	draw_surrounded_empty_fields = true;