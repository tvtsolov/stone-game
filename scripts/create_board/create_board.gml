
function create_board(_size){
	
	FIELD[0][0] = o_field;
	var x_pos = o_field.x;
	var y_pos = o_field.y;
	var offset = o_field.sprite_width+1;
	instance_destroy(o_field);
	
	for (var i = 0; i < _size; ++i) {
	    for (var ii = 0; ii < _size; ++ii) {
				FIELD[i][ii] = instance_create_layer(x_pos, y_pos, "fields", o_field);
				FIELD[i][ii].col = i+1;
				FIELD[i][ii].row = ii+1;
				x_pos+=offset;
		 }
		 y_pos+=offset;	
		 x_pos = FIELD[0][0].x;
	}
}