/// @description Insert description here
// You can write your code in this editor


if room = Board {
	//draw the board
	draw_sprite_stretched(s_board_wood_plain, -1, 0, 0, room_width, room_height);
	draw_sprite(s_board_9x9, 0, global.board_start_coordinates, global.board_start_coordinates);
	
	
	
	//draw the teritory and influence
	if draw_surrounded_empty_fields {
	
	var draw_mark = function(element) {
		var size = array_length(element);
		for (var i = 0; i < size; ++i) {
			var item = element[i];
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
			} else /* if a stone */ {
					if item.stone != noone and item.stone.group_.is_dead {
				
						sprite_influence = noone;
					
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
				}
			}
		}
		array_foreach(global.board_array, draw_mark);
	}


	
}
	
