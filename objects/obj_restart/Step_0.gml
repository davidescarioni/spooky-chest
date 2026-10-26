direction = 270 - obj_controller.cameraAngle;
image_angle = direction + 90;

y = y + lengthdir_y(60, image_angle)

show_debug_message("Y: " + string(y));