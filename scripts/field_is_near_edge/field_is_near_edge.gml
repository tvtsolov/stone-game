function field_is_near_edge(field){
	
	var row = field.row;
	var col = field.col;
	
	return col == 0 or col == global.board_size-1 or row == 0 or row == global.board_size 
	
}