/// @description Insert description here
// You can write your code in this editor
	
	draw_surrounded_empty_fields = false;
	
	for (var i = 0; i < global.board_size; ++i) {
	    array_foreach(FIELD[i], clear_surrounded_mark);
	}