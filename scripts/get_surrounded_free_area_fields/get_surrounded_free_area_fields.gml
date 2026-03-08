function get_surrounded_free_area_fields(field_1, color_, surrounding_group_){
	var area				= [];
	var neighbors		= [];
	var unique_fields = [];
	
	array_push(area, field_1);
	
	//get all neigbour fields around this initial field
	var free_fields_init = get_free_neighbors_around_one_field(field_1, color_, surrounding_group_);
	
	//extract the fields that don't exits already in the "neighbors" array
	unique_fields = get_new_elements(free_fields_init, neighbors);
	
	//add the empty neighbors in the area[]
	area = array_concat(area, unique_fields);
	
	while(array_length(unique_fields) > 0){
		
		neighbors = get_free_neighbors_around_several_fields(unique_fields, color_, surrounding_group_);
		unique_fields = get_new_elements(neighbors, area);
		area = array_concat(area, unique_fields);
		
	}
	return area;
}