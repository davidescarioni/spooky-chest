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

if !(instance_exists(oGameController)) {
	instance_create_layer(x,y,"Instances", oGameController)
}