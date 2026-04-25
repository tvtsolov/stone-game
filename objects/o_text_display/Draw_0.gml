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

//black
draw_sprite_ext(s_stone, 0 ,x, y+14, .3, .3, 0, c_white, 1 );

draw_text_transformed(x+10, y+10, "Hostiges taken by WHITE: " + string(global.black_stones_hostiges), .5, .5, 0);

//white
draw_sprite_ext(s_stone_1, 0 ,x+240, y+14, .3, .3, 0, c_white, 1 );
draw_text_transformed(x+250, y+10, "Hostiges taken by BLACK: " + string(global.white_stones_hostiges), .5, .5, 0);