randomise();

if room = Board {
	global.board_array = array_create(BOARD_SIZE);
	var i = 0;
	var size = array_length(global.board_array);
	repeat(size)
	{
	    global.board_array[i++] = array_create(BOARD_SIZE, o_field);
	}
	size = array_length(global.board_array);
	
	create_board(size);
}