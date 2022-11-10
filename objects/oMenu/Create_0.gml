levelsNumber = 15;
camera = view_camera[0]
yCamera = camera_get_view_y(camera)
widthCamera = camera_get_view_width(camera)

for (var i=0; i < levelsNumber; i++) {
	yy = (floor(i div 5) + 1) * 100;
	xx = i
	if i >= 5 xx = i-5
	if i >= 10 xx = i-10
	with(instance_create_layer((widthCamera / 6) * (xx + 1), yCamera + 60 + yy, "Instances", oButtonLevel)) {
		rmToGo = i+1;
	}
}