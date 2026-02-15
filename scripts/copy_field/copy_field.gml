function copy_field(source, destination){
	
	destination			= instance_create_layer(source.x, source.y, "fields", o_field);
	destination.stone = source.stone;
	destination.row	= source.row;
	destination.col	= source.col;
	return destination;
}