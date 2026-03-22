/// @description Insert description here
// You can write your code in this editor
	
	group_empty_zones();
	
	
	var number_of_zones = array_length(global.empty_zones);
	
	for (var i = 0; i < number_of_zones; ++i) {
		var fields = global.empty_zones[i].fields_;
		array_foreach(fields, set_empty_mark);	 
	}
	
	
	draw_surrounded_empty_fields = true;