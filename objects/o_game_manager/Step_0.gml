if mouse_check_button_pressed(mb_left){
	var played_field = collision_point(mouse_x, mouse_y,o_field, false, true);
	

	if played_field != noone and played_field.stone = noone
	{
		var stone_type =  current_player = player_black ? o_stone_black : o_stone_white;
		var stone_ = instance_create_layer(played_field.x, played_field.y, "Instances", stone_type)
		current_player = (current_player = player_black) ? player_white : player_black;
		played_field.stone = stone_;
		SOUNDS[random_range(0, 4)].play = true;
		check_board(stone_, played_field);
	}
	
}

run_sounds();