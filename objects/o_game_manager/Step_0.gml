temp_target = noone;
is_allowed = true;


//if BOARD_SIZE = 13 and !set {
//	window_set_size(CAM_W  * WINDOW_SIZE * 2, 
//					CAM_H  * WINDOW_SIZE * 2);
//	set = true;
//}

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

run_sounds();


