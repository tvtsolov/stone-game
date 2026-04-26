/// @description Insert description here
// You can write your code in this editor
	
	draw_surrounded_empty_fields = false;
	
	//clear empty zone tag
	for (var i = 0; i < global.board_size; ++i) {
	    array_foreach(FIELD[i], clear_empty_mark);
	}
	
	//clear empty_zone group tag
	for (var i = 0; i < array_length(global.empty_zones); ++i) {
		// can put all these in one single loop, no need of so many loops really
	    array_foreach(global.empty_zones[i].fields_, clear_empty_zone_tag);
		 array_foreach(global.empty_zones[i].fields_, clear_influence);
		 array_foreach(global.empty_zones[i].fields_, clear_disputed_tag);
	}
	
	//clear all dead marked groups
	array_foreach(global.groups, clear_dead_zone_flag);
	array_foreach(global.groups, clear_secured_tag);
	array_foreach(global.groups, remove_all_eyes);
	
	//clear checked flag (this flag is used for collecting the linked groups)
	array_foreach(global.groups, clear_checked_flag);

	
	
	//TODO clear stone.chained_group
	
	
		
	global.score_zones_white = 0;
	global.score_zones_black = 0;
	global.empty_zones = [];
	global.linked_groups = [];


//show_fields();
//show_stones();
