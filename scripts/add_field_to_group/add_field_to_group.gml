function add_field_to_group(_field, _group){
	
	var gr_ar = _group.fields_;
	array_push (gr_ar, _field);
	_field.stone.group_ = _group;
	return _group;
}