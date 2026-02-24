function make_1stone_group(placed_stone, played_field){
	var color_type = placed_stone.object_index = o_stone_black ? color_type.black : color_type.white;
		
	var group_fields = array_create(1, played_field);
	var gr = new Group(color_type, group_fields); // make a struct from the array
	played_field.stone.group_ = gr;
	
	array_push(GROUPS, gr);
	return gr;
}
