function make_scripts(){
	
	set_empty_mark = function(element){
		element.is_empty_field = true;
	}
	
	clear_empty_mark = function(element){
		element.is_empty_field = false;
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

	clear_disputed_tag = function(element) {
		element.disputed = false;	
	}
	
	clear_secured_tag = function(element) {
		element.secured = false;	
	}
	
	//reset_dead_groups = function(element) {
	//	element.dead = false;
	//}
	
	remove_all_eyes = function(element) {
		element.eyes = [];	
	}
	
	mark_all_stones_dead = function (field) {
		field.stone.dead = true;	
	}
	

}