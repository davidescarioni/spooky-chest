if (gNumber <=0) {
	draw_set_alpha(opacity)
	opacity = lerp(opacity, 1, .2)
	draw_set_color(c_black)
	draw_rectangle(0, 0, room_width, room_height, false)
	draw_set_font(fntDefault)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	var txt = "Spooky chest, cath all the ghosts, please!"
	yTextPos = camera_get_view_y(view_camera[0]) + 260
	draw_text(room_width / 2, yTextPos, txt);
	draw_set_alpha(1)
	timer --
	if timer <=0 room_goto(rm_lv1)
}