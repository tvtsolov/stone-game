/// @description Check an array of fields and return only the empty neighbours


function get_free_neighbors_around_several_fields(fields_){
	var neighbors = [];
	
	var size = array_length(fields_);
	
	//take only one layer or new fields around the provided ones:
	
	for (var i = 0; i < size; ++i) {
	   neighbors = array_union(neighbors, get_free_neighbors_around_one_field(fields_[i]));
	}
	
	
	return neighbors;
}