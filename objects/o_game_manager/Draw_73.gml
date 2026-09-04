if room = Board {
	//drawing the influence
	if draw_surrounded_empty_fields {
	
	var draw_mark = function(element) {
		var size = array_length(element);
		for (var i = 0; i < size; ++i) {
			var item = element[i];  // item = field
			var spr_w = sprite_get_width(item.sprite_index);
			var spr_h = sprite_get_height(item.sprite_index);
			var sprite_influence = noone;
			
			if item.empty_zone != noone   {
				
				if item.empty_zone.disputed {
					//if item.black_influence > 0 and  item.white_influence == 0 {
					//	sprite_influence = s_infl_b;
					//} else if item.white_influence > 0 and item.black_influence == 0 {
					//	sprite_influence = s_infl_w;
					//}
					sprite_influence = s_disputed_field;
					//if sprite_influence != noone {
						draw_sprite_ext(sprite_influence, 0, item.x, item.y, 1, 1, 0, c_white, 1);
					//}
				} else {
					//if not disputed
					if item.black_influence > 0 and  item.white_influence == 0 {
						sprite_influence = s_infl_b;
					} 
					else if item.white_influence > 0 and item.black_influence == 0 {
						sprite_influence = s_infl_w;
					}
				
					if sprite_influence != noone {
						draw_sprite_ext(sprite_influence, 0, item.x, item.y, 1, 1, 0, c_white, 1);
					}
				}
			} else /* if a stone and dead, drawing dead stones*/  {
				if item.stone != noone and item.stone.group_.is_dead {
				
					sprite_influence = noone;
					
					if item.black_influence > 0 and  item.white_influence == 0 {
						sprite_influence = s_infl_b_dead_white_stone;
					} 
					else if item.white_influence > 0 and item.black_influence == 0 {
						sprite_influence = s_infl_w_dead_black_stone;
					}
				
					if sprite_influence != noone {
						draw_sprite_ext(sprite_influence, 0, item.x, item.y, 1, 1, 0, c_white, 1);
					}
				}
			}
		}
	}
		
		array_foreach(global.board_fields_array, draw_mark);
		
	}

if o_game_manager.game_stage = stage.end_of_game {
	display_score();
	instance_activate_object(o_new_game_button);
	o_new_game_button.visible = true;
}


}