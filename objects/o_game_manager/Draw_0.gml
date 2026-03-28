/// @description Insert description here
// You can write your code in this editor
if draw_surrounded_empty_fields {
	
	var draw_mark = function(element) {
		var size = array_length(element);
		for (var i = 0; i < size; ++i) {
			var item = element[i];
			var spr_w = sprite_get_width(item.sprite_index);
			var spr_h = sprite_get_height(item.sprite_index);
			var offset = spr_w/4;
			if item.is_internal_field {
				//draw_rectangle_colour(item.x-offset, item.y-offset, item.x+offset, item.y+offset, true);
				var sprite_influence = noone;
				if item.black_influence > item.white_influence {
					sprite_influence = s_infl_b;
				} else if item.white_influence > item.black_influence {
					sprite_influence = s_infl_w;
				}
				if sprite_influence != noone {
					draw_sprite_ext(sprite_influence, 0, item.x, item.y, 1, 1, 0, c_white, item.alpha);
				}
				
			}
		}
	}
	
	array_foreach(global.board_array, draw_mark);
	
}