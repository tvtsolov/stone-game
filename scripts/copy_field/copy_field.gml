
function copy_field(source, destination /*, new_group_ref */ ){
	
	destination			= instance_create_layer(source.x, source.y, "fields", o_field);
	
	if source.stone != noone {
		with(source.stone){
			destination.stone = instance_copy(false);
			//destination.stone.group_ = new_group_ref;
		}
	} else {
		destination.stone = noone;
	}
	destination.row	= source.row;
	destination.col	= source.col;
	
	return destination;
}