global.maxLevelReached = 1;
loadGame();

audio_play_sound(sndTheme, 0, true)

if !instance_exists(obj_i18n) {
    instance_create_layer(x, y, "Instances", obj_i18n)
}