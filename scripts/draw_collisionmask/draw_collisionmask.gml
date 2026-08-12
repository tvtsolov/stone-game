function draw_collisionmask(sprite){
	draw_set_colour(c_red);
	draw_set_alpha(0.5);
	draw_rectangle(self.bbox_left, self.bbox_top, self.bbox_right-1, self.bbox_bottom-1, false);
	draw_set_alpha(1);
}