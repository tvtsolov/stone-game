function get_center_of_screen(){
	//this only works because the view_wport and view_hport have been adjusted to the window size
	var coord = array_create(2);
	var xx = view_wport[0]/2;
	var yy = view_hport[0]/2;
	coord[0] = xx;
	coord[1] = yy;
	return coord;
}