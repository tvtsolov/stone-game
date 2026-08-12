/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(sprite_index, image_index, x-5, y-3, 5, 1, 0, c_white, 1);


switch (room) {
	case Board:
	{
		
		var curr_player_ = o_game_manager.current_player;

		var x_text_position = 0;
		var y_text_position = 0;


		switch (BOARD_SIZE) {
			case 9:
			{
				x_text_position = global.board_start_coordinates + sprite_get_width(s_board_9x9) + 20;
			}
			break;
			case 13:
			{
				x_text_position = global.board_start_coordinates + sprite_get_width(s_board_13x13) + 30;
			}
			break;
			case 19:
			{}
			break;
		}

		x = x_text_position;

		if curr_player_ == PLAYER_B {
			draw_set_font(Font_1);
			draw_set_colour(c_black);
			draw_text_transformed(x_text_position, y, "--BLACK's turn--", 1, 1, 0);
		} else if curr_player_ == PLAYER_W {
			draw_set_font(Font_1);
			draw_set_colour(c_white);
			draw_text_transformed(x_text_position, y, "--WHITE's turn--", 1, 1, 0);
		}

		font_enable_effects(Font_1, false);
		var y_offset_row1 = 54;
		var y_offset_row2 = y_offset_row1*2+20;

		//black
		//draw_sprite_ext(s_stone, 0 ,x+15, y+y_offset_row1+5, .3, .3, 0, c_white, 1 );
		draw_set_colour(global.c_light_yellow);
		draw_text_transformed(x_text_position, y+y_offset_row1, "Taken by ", 1, 1, 0);
		draw_set_colour(c_white);
		draw_text_transformed(x_text_position + 100, y+y_offset_row1, "WHITE: " + string(global.black_stones_hostiges), 1, 1, 0);

		//white
		//draw_sprite_ext(s_stone_1, 0 ,x+15, y+y_offset_row2+5, .3, .3, 0, c_white, 1 );
		draw_set_colour(global.c_light_yellow);
		draw_text_transformed(x_text_position, y+y_offset_row2, "Taken by",1 ,1, 0);
		draw_set_colour(c_black);
		draw_text_transformed(x_text_position + 100, y+y_offset_row2, "BLACK: " + string(global.white_stones_hostiges), 1, 1, 0);
		
		
		
	}
	break;
	case Menu:
	{
	
		
		
	}
	break;
}



