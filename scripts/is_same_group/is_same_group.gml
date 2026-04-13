///@desc Returns TRUE if the fields belong to the same group
///@param {Array of fields} fields_ 

function is_same_group(fields_){
	//check if each element is the same group
	var group = fields_[0].stone.group_;
	
	var size = array_length(fields_);
	
	for (var i = 1; i < size; ++i) {
	    if group != fields_[i].stone.group_{
			return false;
		 }
	}
	return true;
	
}