if (gNumber >= 0) {
	instance_create_layer(x,y,"Instances", obj_ghost_story);
	alarm[0] = 30;
	gNumber -=1;
}