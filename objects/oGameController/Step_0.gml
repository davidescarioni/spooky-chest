if (room == rm_init) {
	if (!instance_exists(oMouse)) {
		instance_create_depth(mouse_x, mouse_y, -1000, oMouse)
	}
}