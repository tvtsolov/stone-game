function check_mouse_input_on_counting_groups(){
	
	if game_stage = stage.counting {
	var hovered_field = noone;
		
#region check hover mouse		

var num_groups = array_length(GROUPS);
		
for (var i = 0; i < num_groups; ++i) {
	var curr_group = GROUPS[i];
	var num_fields = array_length(curr_group.fields_);
			
	for (var ii = 0; ii < num_fields; ++ii) {
		var curr_field = curr_group.fields_[ii];
			   
		hovered_field = collision_point(mouse_x, mouse_y, curr_field.id, false, false);
					
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

#endregion
		
#region change group state

var current_hovered_field = collision_point(mouse_x, mouse_y, o_field, false, false);

if current_hovered_field != noone and current_hovered_field.stone != noone and mouse_check_button_pressed(mb_left) {
	current_hovered_field.stone.group_.is_dead = !current_hovered_field.stone.group_.is_dead;
}

#endregion
		
	}
}