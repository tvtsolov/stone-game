function calculate_influence_field(field){
	
	var row		= field.row;
	var col		= field.col;
	var color	= field.stone.color_;
		
	var right_check	= 0;
	var down_check		= 0;
	var left_check		= 0;
	var up_check		= 0;
		
	var colour			= field.stone.color_;
	var oposite_color = color == 1 ? -1 : 1;
		
	//right
	right_check = (global.board_size-1) - col;
		
	//down
	down_check = (global.board_size-1) - row;

	//left
	left_check = col;
		
	//up
	up_check = row;		


		
	var neighbour	= 0;
	var temp_row	= 0;
	var temp_col	= 0;
		
	neighbour = FIELD[row][col];
	temp_row = row;
	temp_col = col;
		
		
	repeat(right_check){
		temp_col ++;
		neighbour = FIELD[row][temp_col];
		if neighbour.stone == noone or (neighbour.stone.group_.is_dead and neighbour.stone.color_ == -color) {
			if color = color_type.black {
				neighbour.black_influence += 0.35;
				clamp(neighbour.black_influence, 0, 1);
			} else {
				neighbour.white_influence += 0.35;
				clamp(neighbour.white_influence, 0, 1);
			}
			neighbour.alpha += 0.35;
			clamp(neighbour.alpha, 0, 1);
		} else {
			break;
		}
	}
		
		neighbour = FIELD[row][col];
		temp_row = row;
		temp_col = col;
		
	repeat(down_check){
		temp_row++;
		neighbour = FIELD[temp_row][col];
		if neighbour.stone == noone or (neighbour.stone.group_.is_dead and neighbour.stone.color_ == -color) {
			if color = color_type.black {
				neighbour.black_influence += 0.35;
				clamp(neighbour.black_influence, 0, 1);
			} else {
				neighbour.white_influence += 0.35;
				clamp(neighbour.white_influence, 0, 1);
			}
			neighbour.alpha += 0.35;
			clamp(neighbour.alpha, 0, 1);
		} else {
			break;
		}
	}
		
		neighbour = FIELD[row][col];
		temp_row = row;
		temp_col = col;
		
		
	repeat(left_check){
		temp_col--;
		neighbour = FIELD[row][temp_col];
			
		if neighbour.stone == noone or (neighbour.stone.group_.is_dead and neighbour.stone.color_ == -color) {
			if color = color_type.black {
				neighbour.black_influence += 0.35;
				clamp(neighbour.black_influence, 0, 1);
			} else {
				neighbour.white_influence += 0.35;
				clamp(neighbour.white_influence, 0, 1);
			}
			neighbour.alpha += 0.35;
			clamp(neighbour.alpha, 0, 1);
		} else {
			break;
		}
	}
		
		neighbour = FIELD[row][col];
		temp_row = row;
		temp_col = col;
		
	repeat(up_check){
		temp_row--;
		neighbour = FIELD[temp_row][col];
		if neighbour.stone == noone or (neighbour.stone.group_.is_dead and neighbour.stone.color_ == -color) {
			if color = color_type.black {
				neighbour.black_influence += 0.35;
				clamp(neighbour.black_influence, 0, 1);
			} else {
				neighbour.white_influence += 0.35;
				clamp(neighbour.white_influence, 0, 1);
			}				
			neighbour.alpha += 0.35;
			clamp(neighbour.alpha, 0, 1);
		} else {
			break;
		}
	}
		
}