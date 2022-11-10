if sprite_index == sChestShake {
	if animateNumber <= 2 {
		animateNumber+=1;
		image_index = 0;
	} else {
		sprite_index = sChestOpen;
		image_index = 0;
	}
}

if (sprite_index == sChestOpen) {
	image_index = image_number - 1
	if !ghosts {
		ghosts = true
		alarm[0] = 30;
	}
}