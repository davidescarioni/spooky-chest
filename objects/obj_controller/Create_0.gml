camera = view_camera[0];
cameraAngle = 0;
cameraAngleToBe = 0;
alphaStart = 1;

enum gameState {
	start,
	idle,
	rotation,
	movement,
	win
}

enum rotationDir {
	idle,
	left,
	right
}

state = gameState.start;
rotation = rotationDir.idle;

yLevelCompletedStart= camera_get_view_height(camera)/2 + 100;
yLevelCompletedEnd= camera_get_view_height(camera)/2;
yLevelCompleted = yLevelCompletedStart;

alphaLevelCompleted = 0
timeToChangeRoom = 120;

if !(instance_exists(obj_game_controller)) {
	instance_create_layer(x,y,"Instances", obj_game_controller)
}

spr_restart_dim = sprite_get_width(spr_restart);
spr_restart_x_start = room_width - 76;
spr_restart_y_start = 10;
spr_restart_x_end = spr_restart_x_start + spr_restart_dim;
spr_restart_y_end = 10 + spr_restart_dim;

spr_menu_x_start = 76 - spr_restart_dim
spr_menu_y_start = 10;
spr_menu_x_end = spr_menu_x_start + spr_restart_dim;
spr_menu_y_end = 10 + spr_restart_dim;
