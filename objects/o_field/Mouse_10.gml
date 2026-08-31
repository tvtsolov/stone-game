
if o_game_manager.game_stage = stage.counting {
	if stone != noone {
		var group_hovered = stone.group_;	
		var fields_arr =  group_hovered.fields_;
		var size_ =  array_length(fields_arr);
		for (var i = 0; i < size_; ++i) {
			var curr_fld = fields_arr[i];
			curr_fld.stone.outline = true;
		}
	}
}
