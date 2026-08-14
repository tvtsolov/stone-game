if dead {
	image_alpha = .5;
	draw_self(); 
	image_alpha = 1;
} else {
	draw_self();
}