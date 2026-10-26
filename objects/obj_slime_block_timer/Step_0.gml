if (!place_meeting(x, y, obj_slime) && !place_meeting(x, y, obj_player)) {
    instance_create_layer(x, y, "Instances", obj_slime_block);
    instance_destroy();
}