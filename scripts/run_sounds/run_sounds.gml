function run_sounds(){
	
	var size = array_length(SOUNDS);
	var arr_ = SOUNDS;
	
	
	for (var i = 0; i < size; ++i) {
		
		if arr_[i].play {
				with arr_[i]{
					audio_play_sound(sound, 1, false, .1);
					play = false;
				}
			}
	}
	
	
}