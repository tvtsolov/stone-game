if mouse_check_button_pressed(mb_left){
	var field_ = collision_point(mouse_x, mouse_y,o_field, false, true);
	
	if field_ != noone and !field_.has_stone
	{
		var stone_ =  current_player = player_black ? o_stone_black : o_stone_white;
		instance_create_layer(field_.x, field_.y, "Instances", stone_)
		current_player =  current_player = player_black ? player_white : player_black;
		field_.has_stone = true;
	}
	
	
	
}