direction = 270 - obj_controller.cameraAngle;

if (obj_controller.state == gameState.movement) {
		if !isStopped {
			speed += grav;
		}
		if instance_place(x+lengthdir_x(speed, direction), y+lengthdir_y(speed, direction), collision_objects) {
			while(!instance_place(x+lengthdir_x(1, direction), y+lengthdir_y(1, direction), collision_objects)) {
				x+=lengthdir_x(1, direction)
				y+=lengthdir_y(1, direction)
			}
			speed = 0
			isStopped = true;
			
			if (audio_id == -1 || !audio_is_playing(audio_id)) {
			    audio_id = audio_play_sound(snd, 1, false);
				
				if (sprite_index == spr_chest) {
					ScreenShake(10, 2, 0.2);
				}
			}
		}
		if instance_place(x+lengthdir_x(speed, direction), y+lengthdir_y(speed, direction), obj_movable) {
			with (instance_place(x+lengthdir_x(1, direction), y+lengthdir_y(1, direction), obj_movable)) {
				if (isStopped) {
					other.speed = 0;
					other.isStopped = true;
				}
			}
		}
		
		if (isStopped) {
			x = round(x/16) * 16;
			y = round(y/16) * 16  
		}
}

if speed > 7 speed = 7
image_angle = direction + 90