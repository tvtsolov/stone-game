var x_start_of_score = 0;

if instance_exists(o_finalize_game_button) and o_game_manager.game_stage == stage.end_of_game {
	if BOARD_SIZE == 9 {
	x_start_of_score = o_pass_button.y+o_pass_button.sprite_height*2;

	draw_sprite_stretched(sprite_index, 
						0, 
						o_pass_button.x,																									/* << -- X */
						x_start_of_score,																									/* << -- Y */
						(o_finalize_game_button.x + o_finalize_game_button.sprite_width) - o_pass_button.x ,								/* << -- width */
						100);																												/* << -- hight */
						

	} else if BOARD_SIZE == 13 {
	
	x_start_of_score = o_pass_button.y+o_pass_button.sprite_height*2;
	
	draw_sprite_stretched(sprite_index, 
					1, 
					o_pass_button.x,																									/* << -- X */
					x_start_of_score,																									/* << -- Y */
					(o_finalize_game_button.x + o_finalize_game_button.sprite_width) - o_pass_button.x ,								/* << -- width */
					100);																												/* << -- hight */
						
	}
}