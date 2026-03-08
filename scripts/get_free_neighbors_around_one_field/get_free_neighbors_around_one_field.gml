function get_free_neighbors_around_one_field(field_, color_, surrounding_group_){
	
	var row = field_.row;
	var col = field_.col;
	var neighbors = [];
	
	//up
	if row > 0 {
		if FIELD[row-1][col].stone = noone
		{
			array_push(neighbors, FIELD[row-1][col]);
		} else {
			var test = 1243;
		}
	}
	
	//right
	if col < global.board_size-1 {
		if FIELD[row][col+1].stone = noone
		{
			if row = 1 and col = 1{
				var boom = 1534;	
			}
			array_push(neighbors, FIELD[row][col+1]);
		} else {
			var test = 1243;
		}
	}
	
	//down
	if row < global.board_size-1 {
		if FIELD[row+1][col].stone = noone
		{
			array_push(neighbors, FIELD[row+1][col]);
		} else {
			var test = 1243;
		}
	}
	
	//left
	if col > 0 {
		if FIELD[row][col-1].stone = noone
		{
			array_push(neighbors, FIELD[row][col-1]);
		} else {
			var test = 1243;
		}
	}
	
	return neighbors;
}