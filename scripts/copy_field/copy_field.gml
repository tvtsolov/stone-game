
/// @param {Id.Instance} 	source  			Where to copy from	
/// @param {Id.Instance} 	destination		Where to copy into


function copy_field(source, destination /*, new_group_ref */ ){
	
	destination			= instance_create_layer(source.x, source.y, "fields", o_field);
	
	if source.stone != noone {
		var stone_ = make_stone(destination, source.stone.color_, noone);
		destination.stone = stone_;
	} else {
		destination.stone = noone;
	}
	destination.row	= source.row;
	destination.col	= source.col;
	
	return destination;
}