draw_set_font(fntDefault);
draw_set_color(c_white);
if !locked {
	draw_sprite_stretched(sNineSliceSprite, index, x - btnWidth/2, y-btnHeight/2, btnWidth, btnHeight)
	draw_text(x, y, rmToGo)
} else {
	draw_sprite_stretched(sLock, index, x - btnWidth/2, y-btnHeight/2, btnWidth, btnHeight)
}