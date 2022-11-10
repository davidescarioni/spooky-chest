draw_set_alpha(alpha)
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false)
draw_set_font(fntCompleted)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_text(camera_get_view_width(camera)/2 + 5, yTextEnd + 5, "Thanks for Playing!")
draw_set_color(c_white)
draw_text(camera_get_view_width(camera)/2, yTextEnd, "Thanks for Playing")
draw_set_font(fntDefault)
draw_text(camera_get_view_width(camera)/2, yTextCopy, "Spooky Chest, a game made by Scario. Theme Music from SoundImage.org")
yText = lerp(yText, yTextEnd, .1)
alpha = lerp(alpha, .2, .005)
draw_set_alpha(1)