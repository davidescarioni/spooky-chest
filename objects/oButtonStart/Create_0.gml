text = "Start game"
btnWidth = 150;
btnHeight = 60;
camera = view_camera[0];

xPos = (camera_get_view_width(camera) / 2) - (btnWidth / 2);
yPos = camera_get_view_y(camera) + 100 + (camera_get_view_height(camera) / 2) - (btnHeight / 2);

xButtonPos = camera_get_view_width(camera) / 2;
yButtonPos = camera_get_view_y(camera) + 100 + camera_get_view_height(camera) / 2;

index = 0