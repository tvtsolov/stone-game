/// @description Estimate score draw
// also shows the score in the console

	
	group_linked_groups();						// fills global.linked_groups
	add_edges_to_groups();						// currently only adds the stones touching the edges to edges[] per group
	
	mark_dead_groups_pre_influence_calc(); // need to check if all linked groups are not also dead
	
	group_empty_zones(); 
	
	add_linked_group_reference();	
	
	check_eyes();		
	
	calculate_influence_board();		

	var number_of_zones = array_length(global.empty_zones);
	
	mark_disputed();
	
	get_score(); 
	
	show_debug_message("BLACK: " + string(global.score_zones_black));
	show_debug_message("WHITE: " + string(global.score_zones_white));
	
	//DRAWING THE INFLUENCE
	for (var i = 0; i < number_of_zones; ++i) {
		var fields = global.empty_zones[i].fields_;
		array_foreach(fields, set_empty_mark);	 
	}
	draw_surrounded_empty_fields = true;