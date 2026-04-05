function add_linked_group_reference(){
	
	var size = array_length(global.linked_groups);
	
	for (var i = 0; i < size; ++i) {

	   var chained_group_curr = global.linked_groups[i];
		
		var size_ch_group = array_length(chained_group_curr);
		
		for (var ii = 0; ii < size_ch_group; ++ii) {
			var group = chained_group_curr[ii];
			var size_group = array_length(group.fields_);
			
			for (var iii = 0; iii < size_group; ++iii) {
				var stone = group.fields_[iii].stone;
				if group.is_dead {
					stone.chained_group = noone; //resets the chained tag if the stone is not in a live chain
					//show_debug_message("not real chain");
				} else {
					stone.chained_group = chained_group_curr;
					//show_debug_message("is real chain");
				}
			}
		}
	}
}