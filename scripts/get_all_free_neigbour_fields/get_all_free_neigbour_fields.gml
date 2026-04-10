/// @description Gets all empty fields that start from one field (field_1)
/// @param {String} cond what to exclude when getting the fields


function get_all_free_neigbour_fields(field_1, cond = 0){
	var area				= [];
	var neighbours		= [];
	var new_unchecked_fields = [];
	

	
	//get all neigbour fields around this initial field
	
	
	// get (up to) 4 neigbours around one field
	var free_fields_init = get_free_neighbours_around_one_field(field_1, cond);
	
	//extract the fields that don't exits already in the "neighbours" array
	
	new_unchecked_fields = free_fields_init;
	//new_unchecked_fields = get_new_elements(free_fields_init, neighbours);
	
	//add the empty neighbours in the area[]
	
	area = new_unchecked_fields;
	//area = array_concat(area, new_unchecked_fields);
	
	while(array_length(new_unchecked_fields) > 0){
		
		neighbours = get_free_neighbours_around_several_fields(new_unchecked_fields, cond);
		new_unchecked_fields = get_new_elements(neighbours, area);
		area = array_concat(area, new_unchecked_fields);
		
	}
		//add the field to the area
		
	if !array_contains(area, field_1){
		array_push(area, field_1);
	}
	
	return area;
}