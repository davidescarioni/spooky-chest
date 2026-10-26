var time = current_time / 1000;
if taken {
	scale+=.35
	opacity-=.1
}
else {
	scale = sine_between(time, 1, 0.75, 1);
	if !trick {
		opacity = lerp(opacity, 1, .02)
	} else {
		opacity = lerp(opacity, .2, .02)
	}
}
draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, image_angle, image_blend, opacity)