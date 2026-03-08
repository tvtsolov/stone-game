/// @description Check an array of fields and return only the empty neighbours


function get_free_neighbors_around_several_fields(fields_, color_, surrounding_group_){
	var neighbors = [];
	
	var size = array_length(fields_);
	for (var i = 0; i < size; ++i) {
		//if fields_[i].row = 0 and fields_[i].col = 1 {
		//	var test = 46457;	
		//}
	   neighbors = array_union(neighbors, get_free_neighbors_around_one_field(fields_[i], color_, surrounding_group_ ));
	}
	
	
	return neighbors;
}