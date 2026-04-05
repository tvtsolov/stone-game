function make_scripts(){
	
	set_empty_mark = function(element){
		element.is_internal_field = true;
	}
	
	clear_empty_mark = function(element){
		element.is_internal_field = false;
	}
	
	clear_empty_zone_tag = function(element){
		element.empty_zone = noone;
	}

	clear_influence = function(element) {
		element.alpha = 0;
		element.black_influence = 0;
		element.white_influence = 0;
	}
	
	clear_dead_zone_flag = function(element) {
		element.is_dead = false;
	}
	
	clear_checked_flag = function(element) {
		element.checked = false;	
	}

}