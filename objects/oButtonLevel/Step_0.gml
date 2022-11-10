var number = "rm_lv"+string(rmToGo);

if (global.maxLevelReached < rmToGo) locked = true
else locked = false;

if (!locked) {
	if place_meeting(x,y, oMouse) {
		index = 1
		if mouse_check_button_released(mb_left) {
			room_goto(asset_get_index(number))
		}
	} else {
		index = 0;
	}
}