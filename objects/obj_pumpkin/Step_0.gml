direction = 270-obj_controller.cameraAngle;

switch obj_controller.state {
	case gameState.movement:
		if !isStopped {
			speed += grav;
		}
		if instance_place(x+lengthdir_x(speed,direction),y+lengthdir_y(speed,direction),obj_brick) {
			while(!instance_place(x+lengthdir_x(1,direction),y+lengthdir_y(1,direction),obj_brick)) {
				x+=lengthdir_x(1,direction)
				y+=lengthdir_y(1,direction)
			}
			speed = 0
			isStopped = true;
			if sprite_index == spr_chest {
				ScreenShake(10, 2, 0.2);
				audio_play_sound(sndChestNoise, 10, false)
			} else {
				audio_play_sound(sndBoxNoise, 10, false)
			}
			//obj_controller.state = gameState.idle
		}
		if instance_place(x+lengthdir_x(speed,direction),y+lengthdir_y(speed,direction),obj_movable) {
			//while(!instance_place(x+lengthdir_x(1,direction),y+lengthdir_y(1,direction),oMovable)) {
			//	x+=lengthdir_x(1,direction)
			//	y+=lengthdir_y(1,direction)
				with (instance_place(x+lengthdir_x(1,direction),y+lengthdir_y(1,direction), obj_movable)) {
					if isStopped {
						other.isStopped = true;
						other.speed = 0;
					}
				}
				
			//}
			//speed = 0
			//isStopped = true;
			

		}
		//if place_meeting_precise(x,y,oMovable) {
		//	speed = 0
		//	isStopped = true;
		//}
		
		if isStopped {
			x = round(x/16) * 16;
			y = round(y/16) * 16  
		}
		
		var stopped = 0;
		with (obj_movable) {
			if isStopped == true {
				stopped += 1;
			}
		}
		
		if stopped == instance_number(obj_movable) {
			obj_controller.state = gameState.idle
			with (obj_movable) {
				isStopped = false;
				if variable_instance_exists(id, "timer") {
					timer -=1;
					timer = clamp(timer, 0, 3)
					image_index=timer;
					if timer == 0 {
                        instance_destroy();
                    }
				}
			}
		}
	break;
}

if speed > 7 speed = 7
image_angle = direction + 90