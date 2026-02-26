/// @description Insert description here
// You can write your code in this editor

var curr_player_ = o_game_manager.current_player;

if curr_player_ == o_game_manager.player_black {
	draw_set_font(Font_1);
	draw_text_transformed(x+10, y-4, "Current player: BLACK", .5, .5, 0);
	
} else if curr_player_ == o_game_manager.player_white {
	draw_set_font(Font_1);
	draw_text_transformed(x+10, y-4, "Current player: WHITE", .5, .5, 0);
}
