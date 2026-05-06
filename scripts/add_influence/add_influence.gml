function add_influence(check){

	repeat(check){
			temp_row++;
			neighbour = FIELD[temp_row][col];
			if neighbour.stone == noone or (neighbour.stone.group_.is_dead and neighbour.stone.color_ == -color and !neighbour.stone.group_.secured) {
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