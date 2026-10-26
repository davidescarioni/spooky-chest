event_inherited();

if (obj_controller.state == gameState.movement) {
	var _stopped = 0;
	with (obj_movable) {
		if isStopped == true {
			_stopped += 1;
		}
	}
		
	if (_stopped == instance_number(obj_movable)) {
		with (obj_movable) {
			isStopped = false;
			if variable_instance_exists(id, "timer") {
				timer -=1;
				timer = clamp(timer, 0, 3)
				image_index=timer;
				if (timer <= 0) {
					instance_create_layer(x, y, "Player", obj_box_expired);
					instance_destroy();
				}
			}
		}
		obj_controller.state = gameState.idle;
		snd_is_playing = false;
	}
}