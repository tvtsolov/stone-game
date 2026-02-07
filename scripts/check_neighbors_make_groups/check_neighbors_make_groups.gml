function check_neighbors_make_groups(placed_stone, played_field){

var neighbor_groups	= array_create(0);
var board_size			= array_length(global.board_array);	
var up_field			= noone;
var right_field		= noone;
var down_field			= noone;
var left_field			= noone;
	
if array_length(GROUPS) == 0 {
		
//make a group of one stone
		
	make_1stone_group(placed_stone, played_field);
	//var color_type = placed_stone.object_index = o_stone_black ? color_type.black : color_type.white;
		
	//var group_fields = array_create(1, played_field);
	//var gr = new group(group_fields, color_type); // make a struct from the array
	//if !array_contains(GROUPS, gr){
	//	array_push(GROUPS, gr);
	//}
	//placed_stone.group_ = gr;
		
} else {
	
	var played_row = played_field.row;
	var played_col = played_field.col;
	

//take field up
		if played_row	> 0 {
			up_field		= FIELD[played_row-1][played_col];
		} 
//take field right
		if played_col	<= board_size-2 {
			right_field = FIELD[played_row][played_col+1];
		}
//take field down
		if played_row	< board_size-2 {
			down_field	= FIELD[played_row+1][played_col];
		} 
//take field left
		if played_col	> 0 {
			left_field	= FIELD[played_row][played_col-1];
		} 

	
		if up_field.stone != noone and up_field != noone {
			var neighbor_stone = up_field.stone;
			if neighbor_stone.color_ == placed_stone.color_ {
				// get group
				var neighbor_groupUP = neighbor_stone.group_;
				array_push(neighbor_groups, neighbor_groupUP);
			}
		}
		if right_field != noone and right_field.stone != noone {
			var neighbor_stone = right_field.stone;
			if neighbor_stone.color_ == placed_stone.color_ {
				// get group
				var neighbor_groupRIGHT = neighbor_stone.group_;
				array_push(neighbor_groups, neighbor_groupRIGHT);
			}
		}
		if down_field != noone and down_field.stone != noone {
			var neighbor_stone = down_field.stone;
			if neighbor_stone.color_ == placed_stone.color_ {
				// get group
				var neighbor_groupDOWN = neighbor_stone.group_;
				array_push(neighbor_groups, neighbor_groupDOWN);
			}
		}
		if left_field != noone and left_field.stone!= noone {
			var neighbor_stone = left_field.stone;
			if neighbor_stone.color_ == placed_stone.color_ {
				// get group
				var neighbor_groupLEFT = neighbor_stone.group_;
				array_push(neighbor_groups, neighbor_groupLEFT);
			}
		}
		// deal with the neighboring goups here:
		if array_length(neighbor_groups) == 0 {
			make_1stone_group(placed_stone, played_field);
			
		}
	}
}