/// @description Insert description here
// You can write your code in this editor
draw_self();

var curr_player_ = o_game_manager.current_player;

if curr_player_ == o_game_manager.player_black {
	draw_set_font(Font_1);
	draw_text_transformed(x+10, y, "Current player: BLACK", 1, 1, 0);
	
} else if curr_player_ == o_game_manager.player_white {
	draw_set_font(Font_1);
	draw_text_transformed(x+10, y, "Current player: WHITE", 1, 1, 0);
}

var y_offset_row1 = 54;
var y_offset_row2 = y_offset_row1*2+20;

//black
draw_sprite_ext(s_stone, 0 ,x+15, y+y_offset_row1+5, .3, .3, 0, c_white, 1 );
draw_text_transformed(x+25, y+y_offset_row1, "Hostiges taken by WHITE: " + string(global.black_stones_hostiges), 1, 1, 0);

//white
draw_sprite_ext(s_stone_1, 0 ,x+15, y+y_offset_row2+5, .3, .3, 0, c_white, 1 );
draw_text_transformed(x+25, y+y_offset_row2, "Hostiges taken by BLACK: " + string(global.white_stones_hostiges), 1, 1, 0);