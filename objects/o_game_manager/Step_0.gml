

if room = Menu {
	
	if !instance_exists(o_menu) {
		var displ_x = view_get_xport(0);
		var displ_y = view_get_yport(0);
		var displ_W_center = (view_wport);
		var displ_H_center = (view_hport);
		instance_create_layer(displ_W_center, displ_H_center, "Instances", o_menu);
	}
}
else if room = Board {
	
	temp_target = noone;
	is_allowed = true;

	if fullscreen {
		window_set_fullscreen(true);
		
	} else {
		window_set_fullscreen(false);
	}


	if current_player.pass {
		next_player_turn();
		previous_player.pass = false;
	}

// go to game stage:

	if game_stage = stage.playing {
		state_play();
	}	else if game_stage = stage.counting {
		activate_all_current_fields();
		state_count();
	}	else if game_stage = stage.finish_prompt {
		state_finish_prompt(); // deactivates all fields on the "fields" layer
		
		if mouse_check_button(mb_left){		
			var but_ = collision_point(mouse_x, mouse_y, o_interactive_surface_button, true , true) {
				if but_ != noone {
					if but_.action = "back" {
						instance_destroy(o_prompt);
						number_of_passes = 0;
						game_stage = stage.playing;
						activate_all_current_fields();
						show_fields();
						exit;
					} else if but_.action = "finish" {
						number_of_passes = 0;
						instance_destroy(o_prompt);
						game_stage = stage.counting;
						instance_activate_object(o_finalize_game_button);
						o_finalize_game_button.visible = true;

					}
				}
			}
		}
	}	else if game_stage = stage.end_of_game {
		//display_score();
	}
	
	if number_of_passes > 1 and !instance_exists(o_prompt) {
		save_current_state_to_history();
		game_stage = stage.finish_prompt;
	}
}

run_sounds();

check_mouse_input_on_counting_groups();

//show_stones();
//show_fields();