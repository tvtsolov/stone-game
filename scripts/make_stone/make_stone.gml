function make_stone(field_, color_, group_){
		
		var stone_type = -1;
			if color_ = color_type.black {
				stone_type = o_stone_black;
			} else {
				stone_type = o_stone_white;
			}
			
		var temp_stone = instance_create_layer(field_.x,field_.y, "stones", stone_type);
		temp_stone.group_ = group_;
		return temp_stone;
}