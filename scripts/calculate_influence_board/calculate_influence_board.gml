
function calculate_influence_board(){
	
	var size = array_length(global.groups);
	
	
	for (var i = 0; i < size; ++i) {
		var groups_size = array_length(global.groups[i].fields_);
		for (var ii = 0; ii < groups_size; ++ii) {
				
			calculate_influence_field(global.groups[i].fields_[ii]);

		}
	}
	
	
	
}