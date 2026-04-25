function group_is_in_disputed_teritory(group_){
	var arr = get_all_fields_around_group(group_);
	var size = array_length(arr);
	
	for (var i = 0; i < size; ++i) {
		var fld = arr[i];
	   if fld.empty_zone != noone {
			if fld.empty_zone.disputed {
				return true;	
			}
		}
	}
	return false;
}