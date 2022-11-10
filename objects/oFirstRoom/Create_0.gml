camera = view_camera[0];
cameraAngle = 0;
cameraAngleToBe = 0;
alphaStart = 1;

yLevelCompletedStart= camera_get_view_height(camera)/3 + 100;
yLevelCompletedEnd= camera_get_view_height(camera)/3;
yLevelCompleted = yLevelCompletedStart;

alphaLevelCompleted = 0