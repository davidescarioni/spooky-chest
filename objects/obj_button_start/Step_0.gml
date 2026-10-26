var _xx = x - btnWidth / 2;
var _yy = y + btnHeight / 2;

if ((mouse_x > _xx) && (mouse_x < _xx + btnWidth)) && ((mouse_y > _yy) && (mouse_y < _yy + btnHeight)) {
	index = 1;
	if mouse_check_button_released(mb_left) {
		if global.maxLevelReached > 1 {
			if !(instance_exists(obj_menu)) {
				instance_create_layer(x,y,"Instances", obj_menu)
				instance_destroy(obj_first_room)
				instance_destroy();
			}
		} else {
			room_goto(rm_intro)
		}
	}
} else {
	index = 0;
}