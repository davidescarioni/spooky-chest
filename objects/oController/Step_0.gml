camera_set_view_angle(camera,cameraAngle);

switch state {
	case gameState.idle:
		if keyboard_check(vk_left) rotation = rotationDir.left;
		if keyboard_check(vk_right) rotation = rotationDir.right;
		if (rotation == rotationDir.left) {
			cameraAngleToBe = cameraAngle + 90;
		}
		if (rotation == rotationDir.right) {
			cameraAngleToBe = cameraAngle - 90;
		}
	break;
	
	case gameState.rotation:
		cameraAngle = lerp(cameraAngle, cameraAngleToBe, .25);
		if (cameraAngle == cameraAngleToBe) {
			rotation = rotationDir.idle;
			state = gameState.movement;
		}
	break;
	
	case gameState.win:
		var getRoomNumber = real(string_replace(room_get_name(room),"rm_lv", ""));
		if (global.maxLevelReached <= getRoomNumber) {
			global.maxLevelReached = getRoomNumber + 1;
			saveGame()
		}
}

switch rotation {
	case rotationDir.left:
	case rotationDir.right:
		state = gameState.rotation;
	break;
}

if (instance_number(oGhost) == 0) {
	state = gameState.win
}

if keyboard_check_released(ord("R")) {
	room_restart()
}

if keyboard_check_released(vk_escape) {
	room_goto(rm_init)
}