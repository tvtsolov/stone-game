x = sprite_get_width(o_game_manager.board_sprite) + 60;

if BOARD_SIZE == 9  {

} else {
	//draw_sprite_stretched(sprite_index, image_index, x, y, sprite_width*2, sprite_height*2);
	image_xscale *= 2;
	image_yscale *= 2;
}
