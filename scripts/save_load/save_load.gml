function saveGame() {
	if (file_exists("save.ini")) file_delete("save.ini")
	ini_open("save.ini");
	ini_write_real("Level", "maxLevelReached", global.maxLevelReached)
	ini_close();
}

function loadGame() {
	if (file_exists("save.ini")) {
	ini_open("save.ini");
	global.maxLevelReached =  ini_read_real("Level","maxLevelReached", 1)
	ini_close();
	}
}