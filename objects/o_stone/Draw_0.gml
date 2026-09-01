draw_self();

if group_.is_dead {
	image_alpha = .8;
} else {
	image_alpha = 1;
}


if !group_.outlined {
	image_index = 0;
} else {
	image_index = 1;
}