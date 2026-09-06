/// @description 
// You can write your code in this editor


if room = Board {
	
	//draw the background and the board afterward
	
	draw_sprite_stretched(s_board_wood_plain, -1, 0, 0, room_width, room_height);
	//draw_sprite_tiled_ext(s_board_wood_plain, 0, x, y, 2, 2, c_white, 1);
	
	draw_sprite(board_sprite, 0, global.board_start_coordinates, global.board_start_coordinates);
	
	if BOARD_SIZE == 9 {	
		
		draw_sprite_stretched_ext(s_bamboo_bg, 0, 300, 0, sprite_get_width(s_bamboo_bg)* 2,sprite_get_height(s_bamboo_bg) * 2, c_white, .2);
		
		draw_sprite_general(s_bamboo_bg, 0, 0, 0, sprite_get_width(s_bamboo_bg), sprite_get_height(s_bamboo_bg), -70, 210, 2, 2, 90, c_white, c_white, c_white, c_white, .2);
		
	} if BOARD_SIZE == 13 {
		draw_sprite_stretched_ext(s_bamboo_bg, 0, 500, 0, sprite_get_width(s_bamboo_bg)* 2,sprite_get_height(s_bamboo_bg) * 2, c_white, .2);
		draw_sprite_general(s_bamboo_bg, 0, 0, 0, sprite_get_width(s_bamboo_bg), sprite_get_height(s_bamboo_bg), -70, 210, 2, 2, 90, c_white, c_white, c_white, c_white, .2);
		
	}
}

