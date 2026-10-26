if (room == rm_init) {
	if (!instance_exists(obj_mouse)) {
		instance_create_depth(mouse_x, mouse_y, -1000, obj_mouse)
	}
}