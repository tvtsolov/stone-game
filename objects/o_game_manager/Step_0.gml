
window_center();


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

	if game_stage = stage.playing {
		state_play();
	}	else if game_stage = stage.counting {
	
	}

}

run_sounds();


