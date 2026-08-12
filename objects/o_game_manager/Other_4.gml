randomise();

if room = Board {
	
	switch (global.board_size) {
		case 9 :
		{ board_sprite = s_board_9x9 }
		break;
		case 13 :
		{ board_sprite = s_board_13x13 }
		break;
		case 19 :
		{ }
		break;
	}


	global.board_fields_array = array_create(BOARD_SIZE);
	var i = 0;
	var size = array_length(global.board_fields_array);
	repeat(size)
	{
	    global.board_fields_array[i++] = array_create(BOARD_SIZE, o_field);
	}
	size = array_length(global.board_fields_array);
	
	create_board(size);
}