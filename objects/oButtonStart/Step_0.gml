xx = x - btnWidth / 2;
yy = y + btnHeight / 2;

if ((mouse_x > xx) && (mouse_x < xx + btnWidth)) && ((mouse_y > yy) && (mouse_y < yy + btnHeight)) {
	index = 1;
	if mouse_check_button_released(mb_left) {
		if global.maxLevelReached > 1 {
			if !(instance_exists(oMenu)) {
				instance_create_layer(x,y,"Instances", oMenu)
				instance_destroy(oFirstRoom)
				instance_destroy();
			}
		} else {
			room_goto(rm_intro)
		}
	}
} else {
	index = 0;
}