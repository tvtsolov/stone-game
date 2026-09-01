function check_mouse_input_on_counting_groups(){
	
	if game_stage = stage.counting {
	
		var num_groups = array_length(GROUPS);
		
		for (var i = 0; i < num_groups; ++i) {
		    var curr_group = GROUPS[i];
			var num_fields = array_length(curr_group.fields_);
			
			for (var ii = 0; ii < num_fields; ++ii) {
				var curr_field = curr_group.fields_[ii];
			   
				var hovered_field = collision_point(mouse_x, mouse_y, curr_field.id, false, false);
			   
				if hovered_field != noone and !curr_group.outlined {
					curr_group.outlined = true;
					break;
				}
				if hovered_field != noone and curr_group.outlined{
					break;
				}
				
				curr_group.outlined = false;
			}
		}
	}
}