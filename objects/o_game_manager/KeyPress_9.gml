/// @description Insert description here
// You can write your code in this editor
	
	group_empty_zones();
	group_linked_groups();
	
	//get_eyes(); TODO
	
	mark_dead_groups(); //TODO not correct, some linked groups are not dead but marked as dead
	calculate_influence_board(); // sets the o_field.alpha and o_field.white_influence/black_influence
	add_edges_to_groups();
	
	//calculate hostiges(); TODO
	
	var number_of_zones = array_length(global.empty_zones);
	
	get_score();
	show_debug_message("BLACK: " + string(global.score_zones_black));
	show_debug_message("WHITE: " + string(global.score_zones_white));
	
	//DRAWING THE INFLUENCE
	for (var i = 0; i < number_of_zones; ++i) {
		var fields = global.empty_zones[i].fields_;
		array_foreach(fields, set_empty_mark);	 
	}
	draw_surrounded_empty_fields = true;