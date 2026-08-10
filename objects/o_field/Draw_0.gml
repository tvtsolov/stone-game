

var curr_pl = o_game_manager.current_player;

if (collision_point(mouse_x, mouse_y, id, true, false)) {
	if curr_pl = o_game_manager.player_white {
		draw_sprite_ext(s_stone_1, 0, x, y, 1, 1, 0, image_blend, 0.4);
	} else {
		draw_sprite_ext(s_stone, 0, x, y, 1, 1, 0, image_blend, 0.4);
	}
}