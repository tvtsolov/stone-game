function show_finish_promp(){
	var coord = get_center_of_screen();
	instance_create_layer(coord[0], coord[1], "prompt", o_prompt);
	
	//instance_deactivate_layer("fields");
	// TODO deactivate only the active fields in the board_array aka GROUPS
	
	deactivate_all_current_fields();
	
	var yes = instance_create_layer(coord[0]-30, coord[1]+20,"prompt", o_interactive_surface_button);
	yes.depth--;
	yes.action = "finish";
	var no	= instance_create_layer(coord[0]+30, coord[1]+20,"prompt", o_interactive_surface_button);
	no.depth--;
	no.action = "back";
	o_prompt.buttons[0] = yes;
	o_prompt.buttons[1] = no;
}