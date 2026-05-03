
function create_board(_size){
	
	global.board_array[0][0] = o_field;
	var x_pos = global.board_start_coordinates+1;
	var y_pos = global.board_start_coordinates+1;
	var offset = o_field.sprite_width+1;
	instance_destroy(o_field);
	
	for (var i = 0; i < _size; ++i) {
	    for (var ii = 0; ii < _size; ++ii) {
				global.board_array[i][ii] = instance_create_layer(x_pos, y_pos, "fields", o_field);
				global.board_array[i][ii].row = i;
				global.board_array[i][ii].col = ii;
				x_pos+=offset;
		 }
		 y_pos+=offset;	
		 x_pos = global.board_array[0][0].x;
	}
}