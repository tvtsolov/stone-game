/// @description Insert description here
// You can write your code in this editor
	
	group_empty_zones();
	group_linked_groups();
	//TODO add linked_group regerence to all groups that are linked
	// Group.linked_group = noone by default
	mark_dead_groups(); //TODO not correct, some linked groups are not dead but marked as dead
	add_linked_group_reference();
	


	
	calculate_influence_board(); // sets the o_field.alpha and o_field.white_influence/black_influence
	//TODO the above, the calculation at the start is not correct
	
	add_edges_to_groups();
	// TODO add_edges_to_zones() ?
	
	var number_of_zones = array_length(global.empty_zones);
	
	get_score(); //TODO add hostiges to the score
	
	show_debug_message("BLACK: " + string(global.score_zones_black));
	show_debug_message("WHITE: " + string(global.score_zones_white));
	
	//DRAWING THE INFLUENCE
	for (var i = 0; i < number_of_zones; ++i) {
		var fields = global.empty_zones[i].fields_;
		array_foreach(fields, set_empty_mark);	 
	}
	draw_surrounded_empty_fields = true;