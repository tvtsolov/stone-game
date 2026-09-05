depth = 299;
image_speed = 0;
pressed	= false;
instance_deactivate_object(id);
visible = false;

if BOARD_SIZE == 9  {

} else {
	//draw_sprite_stretched(sprite_index, image_index, x, y, sprite_width*2, sprite_height*2);
	image_xscale *= 2;
	image_yscale *= 2;
}