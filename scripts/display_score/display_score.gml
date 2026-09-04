function display_score(){

	draw_sprite_stretched(s_result_display, 
						0, 
						o_pass_button.x, o_pass_button.y+o_pass_button.sprite_height + 10, 
						(o_finalize_game_button.x + (o_finalize_game_button.x + o_finalize_game_button.sprite_width)) - o_pass_button.x,
						100);
	
}