function check_neighbors_make_groups(placed_stone, played_field){

var neighbor_groups	= array_create(0);
var board_size			= global.board_size;	
var up_field			= noone;
var right_field		= noone;
var down_field			= noone;
var left_field			= noone;
	
	
if array_length(GROUPS) == 0 {
		
//make a group of one stone
		
	make_1stone_group(placed_stone, played_field);
		
} else {
	
neighbor_groups = get_field_neighbor_groups(played_field, true);

		// deal with the neighboring goups here:
		var neighbors_count = array_length(neighbor_groups);
		if neighbors_count == 0 {
			make_1stone_group(placed_stone, played_field);
		} else if neighbors_count == 1 {
			add_field_to_group(played_field,neighbor_groups[0]);
		} else {
			merge_groups(neighbor_groups, played_field); // returns the last created group
		}
	}
}












