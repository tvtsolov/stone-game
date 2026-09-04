function display_score(){
	var offset	= 25;
	var w_sc	= global.score_zones_white;
	var b_sc	= global.score_zones_black;
	var b_h		= global.black_stones_hostiges;
	var w_h		= global.white_stones_hostiges;
	
	draw_sprite_stretched(s_result_display, 
						0, 
						o_pass_button.x,																									/* << -- X */
						o_pass_button.y+o_pass_button.sprite_height + 10,																	/* << -- Y */
						(o_finalize_game_button.x + o_finalize_game_button.sprite_width) - o_pass_button.x ,								/* << -- width */
						100);																												/* << -- hight */
	draw_set_font(Font_1);
	draw_set_colour(c_black);
	draw_text_transformed(o_text_display.x+10, o_text_display.y-offset*2, "Score:", 1, 1, 0);
	
	draw_text_transformed(o_text_display.x+10, o_text_display.y-offset*1.5 + font_get_size(Font_1), "White:", 1, 1, 0);
	draw_text_transformed(o_text_display.x+offset*4, o_text_display.y-offset*1.5 + font_get_size(Font_1), string(w_sc), 1, 1, 0);
	
	
	draw_text_transformed(o_text_display.x+10, o_text_display.y-offset/2 + font_get_size(Font_1), "Black:", 1, 1, 0);
	draw_text_transformed(o_text_display.x+offset*4, o_text_display.y-offset/2 + font_get_size(Font_1), string(b_sc), 1, 1, 0);
	
	
	
}