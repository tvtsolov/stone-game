///@desc returns up to 4 neibouring empty field around the given field

function get_free_neighbours_around_one_field(field_){
	
	var row = field_.row;
	var col = field_.col;
	var neighbours = [];
	var fld = 0;
	//up
	if row > 0 {
		fld = FIELD[row-1][col];
		if fld.stone = noone
		{
			if fld.is_internal_field = false
				array_push(neighbours, fld);
		}
	}
	
	//right
	if col < global.board_size-1 {
		fld = FIELD[row][col+1];
		if fld.stone = noone
		{
			if fld.is_internal_field = false
				array_push(neighbours, fld);
		}
	}
	
	//down
	if row < global.board_size-1 {
		fld = FIELD[row+1][col];
		if fld.stone = noone
		{
			if fld.is_internal_field = false
				array_push(neighbours, fld);
		} 
	}
	
	//left
	if col > 0 {
		fld = FIELD[row][col-1];
		if fld.stone = noone
		{
			if fld.is_internal_field = false
				array_push(neighbours, fld);
		} 
	}
	
	return neighbours;
}