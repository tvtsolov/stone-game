function group_linked_groups(){
	
	var linked_groups = [];
	
	var groups = global.groups;
	var size = array_length(groups);
	for (var i = 0; i < size; ++i) {
		var group = groups[i];
		var group_size = array_length(group.fields_);
		for (var ii = 0; ii < group_size; ++ii) {
			
			var group_color = group.color_;
			
			var top_left	= noone;
			var top_right	= noone;
			var bot_left	= noone;
			var bot_right	= noone;
			
		   var field = group.fields_[ii];
			var row = field.row;
			var col = field.col;
			 
			 //top left
			if row > 0 and col > 0 {
				top_left = FIELD[row-1][col-1];
				if top_left.stone != noone and top_left.stone.color_ == group_color {
					if !array_contains(field.stone.group_.linked_to, top_left.stone.group_)
					{
						array_push(field.stone.group_.linked_to,  top_left.stone.group_);
					}
				}
			}
			 
			 //top right
			if row > 0 and col < global.board_size-1 {
				top_right = FIELD[row-1][col+1];
				if top_right.stone != noone and top_right.stone.color_ == group_color {
					if !array_contains(field.stone.group_.linked_to, top_right.stone.group_)
					{
						array_push(field.stone.group_.linked_to,  top_right.stone.group_);
					}
				}
			}			 
			 
			 //bottom left
			if row < global.board_size-1 and col > 0 {
				bot_left = FIELD[row+1][col-1];
				if bot_left.stone != noone and bot_left.stone.color_ == group_color {
					if !array_contains(field.stone.group_.linked_to, bot_left.stone.group_)
					{
						array_push(field.stone.group_.linked_to,  bot_left.stone.group_);
					}
				}
			}			 
			 
			 //bottom right
			if row < global.board_size-1 and col < global.board_size-1 {
				bot_right = FIELD[row+1][col+1];
				if bot_right.stone != noone and bot_right.stone.color_ == group_color {
					if !array_contains(field.stone.group_.linked_to, bot_right.stone.group_)
					{
						array_push(field.stone.group_.linked_to,  bot_right.stone.group_);
					}
				}
			}
		}
	}
	
		
}