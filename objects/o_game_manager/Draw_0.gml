/// @description Insert description here
// You can write your code in this editor
if draw_surrounded_empty_fields {
	
	var draw_mark = function(element) {
		var size = array_length(element);
		for (var i = 0; i < size; ++i) {
			var item = element[i];
			if item.is_internal_field {
				draw_sprite(s_mark_surrounded, 0, item.x, item.y);
			}
		}
	}
	
	array_foreach(global.board_array, draw_mark);
	
}