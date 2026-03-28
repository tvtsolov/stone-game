/// @description Insert description here
// You can write your code in this editor
	
	draw_surrounded_empty_fields = false;
	
	//clear empty zone tag
	for (var i = 0; i < global.board_size; ++i) {
	    array_foreach(FIELD[i], clear_empty_mark);
	}
	
	//clear empty_zone group tag
	for (var i = 0; i < array_length(global.empty_zones); ++i) {
	    array_foreach(global.empty_zones[i].fields_, clear_empty_zone_tag);
		 array_foreach(global.empty_zones[i].fields_, clear_influence);
	}
	
	global.empty_zones = [];
