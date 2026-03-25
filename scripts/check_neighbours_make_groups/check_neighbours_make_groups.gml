///@Desc Function this function checkes if the current new move has to be added to existing group or to create it's own new group of one stone

function check_neighbours_make_groups(placed_stone, played_field){


var same_neighbour_groups	= array_create(0);
var board_size			= global.board_size;	
var up_field			= noone;
var right_field		= noone;
var down_field			= noone;
var left_field			= noone;
	
	
if array_length(GROUPS) == 0 {
		//make a group of one stone
		return make_1stone_group(placed_stone, played_field);
} else {
		same_neighbour_groups = get_field_neighbour_groups(played_field, true);

		// deal with the neighbouring goups here:
		var same_neighbours_count = array_length(same_neighbour_groups);
		if same_neighbours_count == 0 {
			return make_1stone_group(placed_stone, played_field);
		} else if same_neighbours_count == 1 {
			return add_field_to_group(played_field,same_neighbour_groups[0]);
		} else {
			return merge_groups(same_neighbour_groups, played_field); // returns the last created group
		}
	}
}












