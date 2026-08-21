///@desc Recursively checks what is on the diagonals of the eye and verifies if it has any weak points, returns true if the zone is a deffinite eye

///@param {Id.Instance} field - the zone we want to check if it's an eye or not
///@param {Array} checked - used to track where the recursion has already been, the first time you are using this function, you can leave this empty


function is_real_eye_second_checks(field, checked = []){

if array_contains(checked, field) {
	return true;	
} else {
	array_push(checked, field);
}

	
#region vars

	var row			= field.row;
	var col			= field.col;
	var top_left	= noone;
	var top_right	= noone;
	var bot_right	= noone;
	var bot_left	= noone;
	
	var edge = global.board_size-1;
	
	var liberties = [];
	
#endregion

#region diagonal_fields
	// top left
	if row > 0 and col > 0 {
		top_left = FIELD[row-1][col-1];
		if top_left.stone == noone{
			array_push(liberties, top_left);
		}
	}
	
	// top right
	if row > 0 and col < edge {
		top_right = FIELD[row-1][col+1];
		if top_right.stone == noone{
			array_push(liberties, top_right);
		}
	}
	
	// bottom right
	if row < edge and col < edge {
		bot_right = FIELD[row+1][col+1];
		if bot_right.stone == noone{
			array_push(liberties, bot_right);
		}
	}

	// bottom left
	if row < edge and col > 0 {
		bot_left = FIELD[row+1][col-1];
		if bot_left.stone == noone{
			array_push(liberties, bot_left);
		}
	}
#endregion	
	
	
	var num_of_liberties = array_length(liberties); // these are empty board fields
	
	
	//check for forks

	if num_of_liberties > 0
	{
		
		// check if they are possible eyes
		var valid_eyes		= 0;
		var invalid_eyes	= 0;
		
		for (var i = 0; i < num_of_liberties; ++i) {
			
			var zone_temp = liberties[i].empty_zone;
			
			if array_length(zone_temp.fields_) == 1 and zone_temp.is_possible_eye{
				
				var fld_to_check = liberties[i];
				{
					if is_real_eye_second_checks(fld_to_check, checked) {
						valid_eyes ++;
					}
				}
			}
		}
		
		// check how many of the liberties have returned true (are part of a grid of eyes that are all closed in the end)
		if (valid_eyes == num_of_liberties) 
			or 
			(valid_eyes == num_of_liberties-1) 
		{
			field.empty_zone.is_real_eye = true;
			assign_eye_to_groups(field);
			return true;
		} else {
			return eyes_group_checks(field);
		}
	}
	else if num_of_liberties == 0 {
		field.empty_zone.is_real_eye = true;
		assign_eye_to_groups(field);
		return true;
	}
	
	
	return false;
	
	
	// reset w/b_influence
}