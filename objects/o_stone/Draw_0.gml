if group_.is_dead {
	image_alpha = .5;
	draw_self(); 
	image_alpha = 1;
	
	if !outline {
		image_index = 0;
	} else {
		image_index = 1;
	}
	
} else {
	if !outline {
		image_index = 0;
	} else {
		image_index = 1;
	}
	draw_self();
}