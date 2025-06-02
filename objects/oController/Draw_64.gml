switch state {
	case gameState.start:
		draw_set_alpha(alphaStart)
		draw_set_color(c_black)
		draw_rectangle(0, 0, room_width, room_height, false)
		alphaStart -= .05
		if alphaStart <= .1 state = gameState.idle;
		draw_set_alpha(1)
	break;
	
	case gameState.win:
		draw_set_alpha(alphaLevelCompleted)
		draw_set_color(c_black);
		draw_rectangle(0, 0, room_width, room_height, false)
		draw_set_font(fntCompleted)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_color(c_black)
		draw_text(camera_get_view_width(camera)/2 + 5, yLevelCompleted + 5, "Level Completed")
		draw_set_color(c_white)
		draw_text(camera_get_view_width(camera)/2, yLevelCompleted, "Level Completed")
		yLevelCompleted = lerp(yLevelCompleted, yLevelCompletedEnd, .1)
		alphaLevelCompleted = lerp(alphaLevelCompleted, .8, .025)
		timeToChangeRoom--
		draw_set_alpha(1)
		if timeToChangeRoom <=0 {
			alphaStart+=.1
			draw_set_alpha(alphaStart)
			draw_set_color(c_black)
			draw_rectangle(0, 0, room_width, room_height, false)
			if alphaStart >= 1 room_goto_next()
			draw_set_alpha(1);
		}
	break;
	
	default:
		// Other Text
		draw_set_font(fntDefault)
		draw_set_color(c_white)
		draw_set_halign(fa_left)

		draw_text(10, 20, "Press ESC to return to menu")
		draw_text(10, 50, "Press R to restart the level")
		var y_text_pos = camera_get_view_y(camera) + 300
		var _txt = "";
		
		switch (room) {
			case rm_lv1:
				draw_set_halign(fa_center)
				_txt = "Use Left and Right to rotate the room"
				draw_text(room_width / 2, y_text_pos, _txt);
				break;
				
			case rm_lv2:
				draw_set_halign(fa_center)
				_txt = "You need to fall down exactly on the ghost to cath him"
				draw_text(room_width / 2, y_text_pos, _txt);
				break;
		}
	break;
}





