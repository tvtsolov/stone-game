function mark_dead_groups_post_influence_calc(){
	// groups that are in areas where the influence is the oposite color
	// are marked dead
	
	// this can be calculated by getting all neighbouring fields and 
	// checking if they are all influenced by the oposite color
	
	// to have eyes there need to be at least 2 ,not neigbouring fields that 
	// are influences by the same color as the group
	// OR
	// there need to be at least 3 fields of the same color as the group
	
	var size = array_length(global.groups);
	
	
	
}