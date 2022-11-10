if ((oController.state == gameState.idle) && x == other.x) {
	if !taken {
		audio_play_sound(sndTaken, 10, false)
	}
	taken = true
} else {
	trick = true;
	alarm[0] = 30;
}