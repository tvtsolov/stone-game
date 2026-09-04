/// @description 
// You can write your code in this editor


if room = Board {
	
	//draw the background and the board afterward
	
	draw_sprite_stretched(s_board_wood_plain, -1, 0, 0, room_width, room_height);
	//draw_sprite_tiled_ext(s_board_wood_plain, 0, x, y, 2, 2, c_white, 1);
	
	draw_sprite(board_sprite, 0, global.board_start_coordinates, global.board_start_coordinates);
	
}

