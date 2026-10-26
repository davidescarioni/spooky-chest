global.maxLevelReached = 0;

if (DEBUG) {
	global.maxLevelReached = 50;
} else {
	loadGame();
}

audio_play_sound(sndTheme, 0, true)

if !instance_exists(obj_i18n) {
    instance_create_layer(x, y, "Instances", obj_i18n)
}