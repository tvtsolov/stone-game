
function calculate_influence_board(){
	
	var size = array_length(global.groups);
	
	for (var i = 0; i < size; ++i) {
		var group = global.groups[i];
		
		if !group.is_dead {
		
			var groups_size = array_length(group.fields_);
			for (var ii = 0; ii < groups_size; ++ii) {	
				calculate_influence_field(global.groups[i].fields_[ii]);
			}
			
		}
	}
}