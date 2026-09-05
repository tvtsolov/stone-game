x = 510;
y = 360;

if room == Menu {
	if o_menu.size_1_select.selected = true {
		y = 360 - 111;
	} else if  o_menu.size_2_select.selected = true {
		y = 360;
	} else if o_menu.size_3_select.selected = true {
		y = 360 + 111;
	}


}