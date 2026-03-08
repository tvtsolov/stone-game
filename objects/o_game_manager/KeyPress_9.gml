/// @description Insert description here
// You can write your code in this editor

	var test_area = get_surrounded_free_area_fields(FIELD[0][0], noone, noone);
	
	array_foreach(test_area, set_surrounded_mark);
	
	draw_surrounded_empty_fields = true;