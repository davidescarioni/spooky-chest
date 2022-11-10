direction = 270-oController.cameraAngle;

switch oController.state {
	case gameState.movement:
		if !isStopped {
			speed += grav;
		}
		if instance_place(x+lengthdir_x(speed,direction),y+lengthdir_y(speed,direction),oBrick) {
			while(!instance_place(x+lengthdir_x(1,direction),y+lengthdir_y(1,direction),oBrick)) {
				x+=lengthdir_x(1,direction)
				y+=lengthdir_y(1,direction)
			}
			speed = 0
			isStopped = true;
			if sprite_index == sChest {
				ScreenShake(10, 2, 0.2);
				audio_play_sound(sndChestNoise, 10, false)
			} else {
				audio_play_sound(sndBoxNoise, 10, false)
			}
			//oController.state = gameState.idle
		}
		if instance_place(x+lengthdir_x(speed,direction),y+lengthdir_y(speed,direction),oMovable) {
			//while(!instance_place(x+lengthdir_x(1,direction),y+lengthdir_y(1,direction),oMovable)) {
			//	x+=lengthdir_x(1,direction)
			//	y+=lengthdir_y(1,direction)
				with (instance_place(x+lengthdir_x(1,direction),y+lengthdir_y(1,direction), oMovable)) {
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
		with (oMovable) {
			if isStopped == true {
				stopped += 1;
			}
		}
		
		if stopped == instance_number(oMovable) {
			oController.state = gameState.idle
			with (oMovable) {
				isStopped = false;
				if variable_instance_exists(id, "timer") {
					timer -=1;
					timer = clamp(timer, 0, 3)
					image_index=timer;
					if timer == 0 instance_change(oBoxExpired, false)
				}
			}
		}
	break;
}

if speed > 7 speed = 7
image_angle = direction + 90