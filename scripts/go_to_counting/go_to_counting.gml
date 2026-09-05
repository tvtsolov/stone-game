function go_to_counting(){
	
	if !counting_finished {
		group_linked_groups();						// fills global.linked_groups
		add_edges_to_groups();						
		
		if !negotiation_phase {
			mark_dead_groups_pre_influence_calc();		// need to check if all linked groups are not also dead
		}
		group_empty_zones(); 
	
		add_linked_group_reference();	
	
		check_eyes();		
	
		calculate_influence_board();	
	
		mark_disputed();
	
		calculate_influence_fully();

		var number_of_zones = array_length(global.empty_zones);
	
		for (var i = 0; i < number_of_zones; ++i) {
			var fields = global.empty_zones[i].fields_;
			array_foreach(fields, set_empty_mark);	 
		}
	
		get_score(); 

		draw_surrounded_empty_fields = true;
		counting_finished = true;

	} else {
		activate_all_current_fields();
		// now the field objects can check if the game_stage is counting and allow for the selection and change of dead groups
		
	}
}