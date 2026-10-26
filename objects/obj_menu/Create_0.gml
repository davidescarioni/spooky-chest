var _level_count = 0;
var _room_index = 1;

while (asset_get_index("rm_lv" + string(_room_index)) != -1) {
    _level_count++;
    _room_index++;
}

levelsNumber = _level_count;
camera = view_camera[0]
yCamera = camera_get_view_y(camera)
widthCamera = camera_get_view_width(camera)

for (var i=0; i < levelsNumber; i++) {
	yy = (floor(i div 5) + 1) * 100;
	xx = i
	if i >= 5 xx = i-5
	if i >= 10 xx = i-10 
    if i >= 15 xx = i-15
	with(instance_create_layer((widthCamera / 6) * (xx + 1), yCamera + 19 + yy, "Instances", obj_button_level)) {
		rmToGo = i+1;
	}
}