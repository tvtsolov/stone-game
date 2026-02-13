function get_field_neighbor_groups(field_){
	
	var neighbors = array_create(0);
	var played_field_color = field_.stone.color_;
	
	var played_row	= field_.row;
	var played_col	= field_.col;
		
	var board_size	= array_length(global.board_array);			
		
	var up_field	= noone;
	var up_group	= noone;
	var right_field= noone;
	var right_group= noone;
	var down_field	= noone;
	var down_group = noone;
	var left_field	= noone;
	var left_group = noone;
	
//take field UP 
		if played_row	> 0 { 
			up_field		= FIELD[played_row-1][played_col];
			var stone__ = up_field.stone;
			if stone__ != noone and stone__.color_ != played_field_color{
				up_group	= stone__.group_;
				if !array_contains(neighbors,up_group){
					array_push(neighbors, up_group);
				}
			}
		} 
//take field RIGHT
		if played_col	<= board_size-2 {
			right_field = FIELD[played_row][played_col+1];
			var stone__ = right_field.stone;
			if stone__ != noone and stone__.color_ != played_field_color{
				right_group = stone__.group_;
				if !array_contains(neighbors,right_group){
					array_push(neighbors, right_group);
				}
			}
		}
//take field DOWN
		if played_row	< board_size-2 {
			down_field	= FIELD[played_row+1][played_col];
			var stone__ = down_field.stone;
			if stone__ != noone and stone__.color_ != played_field_color{
				down_group = stone__.group_;
				if !array_contains(neighbors,down_group){
					array_push(neighbors, down_group);
				}
			}
		} 
//take field LEFT
		if played_col	> 0 {
			left_field	= FIELD[played_row][played_col-1];
			var stone__ = left_field.stone;
			if stone__ != noone and stone__.color_ != played_field_color{
				left_group = stone__.group_;
				if !array_contains(neighbors,left_group){
					array_push(neighbors, left_group);
				}
			}
		} 
		
	
	return neighbors;
	
}